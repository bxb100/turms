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
// source: model/conversation/private_conversation.proto

package im.turms.server.common.access.client.dto.model.conversation;

public final class PrivateConversationOuterClass {
  private PrivateConversationOuterClass() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_im_turms_proto_PrivateConversation_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_im_turms_proto_PrivateConversation_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n-model/conversation/private_conversatio" +
      "n.proto\022\016im.turms.proto\"M\n\023PrivateConver" +
      "sation\022\020\n\010owner_id\030\001 \001(\003\022\021\n\ttarget_id\030\002 " +
      "\001(\003\022\021\n\tread_date\030\003 \001(\003BB\n;im.turms.serve" +
      "r.common.access.client.dto.model.convers" +
      "ationP\001\272\002\000b\006proto3"
    };
    descriptor = com.google.protobuf.Descriptors.FileDescriptor
      .internalBuildGeneratedFileFrom(descriptorData,
        new com.google.protobuf.Descriptors.FileDescriptor[] {
        });
    internal_static_im_turms_proto_PrivateConversation_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_im_turms_proto_PrivateConversation_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_im_turms_proto_PrivateConversation_descriptor,
        new java.lang.String[] { "OwnerId", "TargetId", "ReadDate", });
  }

  // @@protoc_insertion_point(outer_class_scope)
}