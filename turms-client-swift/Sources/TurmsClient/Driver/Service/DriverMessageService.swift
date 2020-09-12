import Foundation
import PromiseKit

class DriverMessageService {
    private let stateStore: StateStore

    private let minRequestsInterval: TimeInterval?
    private var onNotificationListeners: [(TurmsNotification) -> ()] = []
    private var requestMap: [Int64: Resolver<TurmsNotification>] = [:]
    private var lastRequestDate = Date(timeIntervalSince1970: 0)

    init(stateStore: StateStore, minRequestsInterval: TimeInterval?) {
        self.stateStore = stateStore
        self.minRequestsInterval = minRequestsInterval
    }

    // Listeners

    func addOnNotificationListener(_ listener: @escaping (TurmsNotification) -> ()) {
        onNotificationListeners.append(listener)
    }

    func notifyOnNotificationListener(_ notification: TurmsNotification) {
        onNotificationListeners.forEach {
            $0(notification)
        }
    }

    // Request and notification

    func send(_ populator: (inout RequestBuilder) -> ()) -> Promise<TurmsNotification> {
        var builder = RequestBuilder()
        populator(&builder)
        let request = builder
            .id(generateRandomId())
            .build()
        return send(request)
    }

    func send(_ request: TurmsRequest) -> Promise<TurmsNotification> {
        return Promise { seal in
            if stateStore.isConnected {
                let now = Date()
                let isFrequent = minRequestsInterval != nil && now.timeIntervalSince1970 - lastRequestDate.timeIntervalSince1970 <= minRequestsInterval!
                if isFrequent {
                    seal.reject(TurmsBusinessError(.clientRequestsTooFrequent))
                } else {
                    let data = try! request.serializedData()
                    requestMap.updateValue(seal, forKey: request.requestID.value)
                    stateStore.lastRequestDate = now
                    stateStore.websocket!.write(data: data)
                }
            } else {
                seal.reject(TurmsBusinessError(.clientSessionHasBeenClosed))
            }
        }
    }

    func didReceiveNotification(_ notification: TurmsNotification) {
        let isResponse = !notification.hasRelayedRequest && notification.hasRequestID
        if isResponse {
            let requestId = notification.requestID.value
            let handler = requestMap[requestId]
            if notification.hasCode {
                let code = notification.code.value
                if TurmsStatusCode.isSuccessCode(code) {
                    handler?.fulfill(notification)
                } else {
                    if notification.hasReason {
                        handler?.reject(TurmsBusinessError(code, notification.reason.value))
                    } else {
                        handler?.reject(TurmsBusinessError(code))
                    }
                }
            } else {
                handler?.reject(TurmsBusinessError(.failed, "Invalid notification: the code is missing"))
            }
        }
        notifyOnNotificationListener(notification)
    }

    private func generateRandomId() -> Int64 {
        var id: Int64
        repeat {
            id = Int64.random(in: 1..<16384)
        } while requestMap.keys.contains(id)
        return id
    }
}
