// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: request/user/query_users_infos_nearby_request.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct QueryUsersInfosNearbyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var latitude: Float {
    get {return _storage._latitude}
    set {_uniqueStorage()._latitude = newValue}
  }

  public var longitude: Float {
    get {return _storage._longitude}
    set {_uniqueStorage()._longitude = newValue}
  }

  public var distance: SwiftProtobuf.Google_Protobuf_FloatValue {
    get {return _storage._distance ?? SwiftProtobuf.Google_Protobuf_FloatValue()}
    set {_uniqueStorage()._distance = newValue}
  }
  /// Returns true if `distance` has been explicitly set.
  public var hasDistance: Bool {return _storage._distance != nil}
  /// Clears the value of `distance`. Subsequent reads from it will return its default value.
  public mutating func clearDistance() {_uniqueStorage()._distance = nil}

  public var maxNumber: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._maxNumber ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._maxNumber = newValue}
  }
  /// Returns true if `maxNumber` has been explicitly set.
  public var hasMaxNumber: Bool {return _storage._maxNumber != nil}
  /// Clears the value of `maxNumber`. Subsequent reads from it will return its default value.
  public mutating func clearMaxNumber() {_uniqueStorage()._maxNumber = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "im.turms.proto"

extension QueryUsersInfosNearbyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".QueryUsersInfosNearbyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "latitude"),
    2: .same(proto: "longitude"),
    3: .same(proto: "distance"),
    4: .same(proto: "maxNumber"),
  ]

  fileprivate class _StorageClass {
    var _latitude: Float = 0
    var _longitude: Float = 0
    var _distance: SwiftProtobuf.Google_Protobuf_FloatValue? = nil
    var _maxNumber: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _latitude = source._latitude
      _longitude = source._longitude
      _distance = source._distance
      _maxNumber = source._maxNumber
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularFloatField(value: &_storage._latitude)
        case 2: try decoder.decodeSingularFloatField(value: &_storage._longitude)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._distance)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._maxNumber)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._latitude != 0 {
        try visitor.visitSingularFloatField(value: _storage._latitude, fieldNumber: 1)
      }
      if _storage._longitude != 0 {
        try visitor.visitSingularFloatField(value: _storage._longitude, fieldNumber: 2)
      }
      if let v = _storage._distance {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._maxNumber {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: QueryUsersInfosNearbyRequest, rhs: QueryUsersInfosNearbyRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._latitude != rhs_storage._latitude {return false}
        if _storage._longitude != rhs_storage._longitude {return false}
        if _storage._distance != rhs_storage._distance {return false}
        if _storage._maxNumber != rhs_storage._maxNumber {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}