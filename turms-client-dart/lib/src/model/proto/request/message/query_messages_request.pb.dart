///
//  Generated code. Do not modify.
//  source: request/message/query_messages_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class QueryMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMessagesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'im.turms.proto'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ids', $pb.PbFieldType.P6)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'areGroupMessages')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'areSystemMessages')
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromIds', $pb.PbFieldType.P6)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deliveryDateAfter')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deliveryDateBefore')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCount', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withTotal')
    ..hasRequiredFields = false
  ;

  QueryMessagesRequest._() : super();
  factory QueryMessagesRequest({
    $core.Iterable<$fixnum.Int64>? ids,
    $core.bool? areGroupMessages,
    $core.bool? areSystemMessages,
    $core.Iterable<$fixnum.Int64>? fromIds,
    $fixnum.Int64? deliveryDateAfter,
    $fixnum.Int64? deliveryDateBefore,
    $core.int? maxCount,
    $core.bool? withTotal,
  }) {
    final _result = create();
    if (ids != null) {
      _result.ids.addAll(ids);
    }
    if (areGroupMessages != null) {
      _result.areGroupMessages = areGroupMessages;
    }
    if (areSystemMessages != null) {
      _result.areSystemMessages = areSystemMessages;
    }
    if (fromIds != null) {
      _result.fromIds.addAll(fromIds);
    }
    if (deliveryDateAfter != null) {
      _result.deliveryDateAfter = deliveryDateAfter;
    }
    if (deliveryDateBefore != null) {
      _result.deliveryDateBefore = deliveryDateBefore;
    }
    if (maxCount != null) {
      _result.maxCount = maxCount;
    }
    if (withTotal != null) {
      _result.withTotal = withTotal;
    }
    return _result;
  }
  factory QueryMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMessagesRequest clone() => QueryMessagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMessagesRequest copyWith(void Function(QueryMessagesRequest) updates) => super.copyWith((message) => updates(message as QueryMessagesRequest)) as QueryMessagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMessagesRequest create() => QueryMessagesRequest._();
  QueryMessagesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryMessagesRequest> createRepeated() => $pb.PbList<QueryMessagesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryMessagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMessagesRequest>(create);
  static QueryMessagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get ids => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get areGroupMessages => $_getBF(1);
  @$pb.TagNumber(2)
  set areGroupMessages($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAreGroupMessages() => $_has(1);
  @$pb.TagNumber(2)
  void clearAreGroupMessages() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get areSystemMessages => $_getBF(2);
  @$pb.TagNumber(3)
  set areSystemMessages($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAreSystemMessages() => $_has(2);
  @$pb.TagNumber(3)
  void clearAreSystemMessages() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get fromIds => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get deliveryDateAfter => $_getI64(4);
  @$pb.TagNumber(5)
  set deliveryDateAfter($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeliveryDateAfter() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeliveryDateAfter() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get deliveryDateBefore => $_getI64(5);
  @$pb.TagNumber(6)
  set deliveryDateBefore($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeliveryDateBefore() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeliveryDateBefore() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get withTotal => $_getBF(7);
  @$pb.TagNumber(8)
  set withTotal($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWithTotal() => $_has(7);
  @$pb.TagNumber(8)
  void clearWithTotal() => clearField(8);
}

