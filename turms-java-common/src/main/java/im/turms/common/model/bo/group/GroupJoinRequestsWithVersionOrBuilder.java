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

// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: model/group/group_join_requests_with_version.proto

package im.turms.common.model.bo.group;

public interface GroupJoinRequestsWithVersionOrBuilder extends
    // @@protoc_insertion_point(interface_extends:im.turms.proto.GroupJoinRequestsWithVersion)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>repeated .im.turms.proto.GroupJoinRequest group_join_requests = 1;</code>
   */
  java.util.List<im.turms.common.model.bo.group.GroupJoinRequest> 
      getGroupJoinRequestsList();
  /**
   * <code>repeated .im.turms.proto.GroupJoinRequest group_join_requests = 1;</code>
   */
  im.turms.common.model.bo.group.GroupJoinRequest getGroupJoinRequests(int index);
  /**
   * <code>repeated .im.turms.proto.GroupJoinRequest group_join_requests = 1;</code>
   */
  int getGroupJoinRequestsCount();
  /**
   * <code>repeated .im.turms.proto.GroupJoinRequest group_join_requests = 1;</code>
   */
  java.util.List<? extends im.turms.common.model.bo.group.GroupJoinRequestOrBuilder> 
      getGroupJoinRequestsOrBuilderList();
  /**
   * <code>repeated .im.turms.proto.GroupJoinRequest group_join_requests = 1;</code>
   */
  im.turms.common.model.bo.group.GroupJoinRequestOrBuilder getGroupJoinRequestsOrBuilder(
      int index);

  /**
   * <code>.google.protobuf.Int64Value last_updated_date = 2;</code>
   * @return Whether the lastUpdatedDate field is set.
   */
  boolean hasLastUpdatedDate();
  /**
   * <code>.google.protobuf.Int64Value last_updated_date = 2;</code>
   * @return The lastUpdatedDate.
   */
  com.google.protobuf.Int64Value getLastUpdatedDate();
  /**
   * <code>.google.protobuf.Int64Value last_updated_date = 2;</code>
   */
  com.google.protobuf.Int64ValueOrBuilder getLastUpdatedDateOrBuilder();
}
