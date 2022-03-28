/*
 * Copyright (C) 2019 The Turms Project
 * https://github.com/turms-im/turms
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package im.turms.gateway.domain.session.bo;

import im.turms.common.constant.DeviceType;
import im.turms.common.constant.UserStatus;
import im.turms.server.common.domain.location.bo.Coordinates;

import java.util.Map;

/**
 * @author James Chen
 */
public record UserLoginInfo(
        int version,
        Long userId,
        String password,
        DeviceType loggingInDeviceType,
        Map<String, String> deviceDetails,
        UserStatus userStatus,
        Coordinates coordinates,
        String ip) {
}