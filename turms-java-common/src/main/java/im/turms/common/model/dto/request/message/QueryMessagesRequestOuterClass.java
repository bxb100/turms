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
// source: request/message/query_messages_request.proto

package im.turms.common.model.dto.request.message;

public final class QueryMessagesRequestOuterClass {
  private QueryMessagesRequestOuterClass() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_im_turms_proto_QueryMessagesRequest_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_im_turms_proto_QueryMessagesRequest_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n,request/message/query_messages_request" +
      ".proto\022\016im.turms.proto\032\036google/protobuf/" +
      "wrappers.proto\032&constant/message_deliver" +
      "y_status.proto\"\242\003\n\024QueryMessagesRequest\022" +
      "\013\n\003ids\030\001 \003(\003\022)\n\004size\030\002 \001(\0132\033.google.prot" +
      "obuf.Int32Value\0226\n\022are_group_messages\030\003 " +
      "\001(\0132\032.google.protobuf.BoolValue\0227\n\023are_s" +
      "ystem_messages\030\004 \001(\0132\032.google.protobuf.B" +
      "oolValue\022,\n\007from_id\030\005 \001(\0132\033.google.proto" +
      "buf.Int64Value\0228\n\023delivery_date_after\030\006 " +
      "\001(\0132\033.google.protobuf.Int64Value\0229\n\024deli" +
      "very_date_before\030\007 \001(\0132\033.google.protobuf" +
      ".Int64Value\022>\n\017delivery_status\030\010 \001(\0162%.i" +
      "m.turms.proto.MessageDeliveryStatusB0\n)i" +
      "m.turms.common.model.dto.request.message" +
      "P\001\272\002\000b\006proto3"
    };
    descriptor = com.google.protobuf.Descriptors.FileDescriptor
      .internalBuildGeneratedFileFrom(descriptorData,
        new com.google.protobuf.Descriptors.FileDescriptor[] {
          com.google.protobuf.WrappersProto.getDescriptor(),
          im.turms.common.constant.MessageDeliveryStatusOuterClass.getDescriptor(),
        });
    internal_static_im_turms_proto_QueryMessagesRequest_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_im_turms_proto_QueryMessagesRequest_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_im_turms_proto_QueryMessagesRequest_descriptor,
        new java.lang.String[] { "Ids", "Size", "AreGroupMessages", "AreSystemMessages", "FromId", "DeliveryDateAfter", "DeliveryDateBefore", "DeliveryStatus", });
    com.google.protobuf.WrappersProto.getDescriptor();
    im.turms.common.constant.MessageDeliveryStatusOuterClass.getDescriptor();
  }

  // @@protoc_insertion_point(outer_class_scope)
}
