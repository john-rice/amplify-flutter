// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_coip_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_coip_cidr_request.g.dart';

abstract class DeleteCoipCidrRequest
    with
        _i1.HttpInput<DeleteCoipCidrRequest>,
        _i2.AWSEquatable<DeleteCoipCidrRequest>
    implements Built<DeleteCoipCidrRequest, DeleteCoipCidrRequestBuilder> {
  factory DeleteCoipCidrRequest({
    String? cidr,
    String? coipPoolId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteCoipCidrRequest._(
      cidr: cidr,
      coipPoolId: coipPoolId,
      dryRun: dryRun,
    );
  }

  factory DeleteCoipCidrRequest.build(
          [void Function(DeleteCoipCidrRequestBuilder) updates]) =
      _$DeleteCoipCidrRequest;

  const DeleteCoipCidrRequest._();

  factory DeleteCoipCidrRequest.fromRequest(
    DeleteCoipCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteCoipCidrRequest>> serializers = [
    DeleteCoipCidrRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteCoipCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// A customer-owned IP address range that you want to delete.
  String? get cidr;

  /// The ID of the customer-owned address pool.
  String? get coipPoolId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteCoipCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidr,
        coipPoolId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCoipCidrRequest')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'coipPoolId',
        coipPoolId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteCoipCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteCoipCidrRequest> {
  const DeleteCoipCidrRequestEc2QuerySerializer()
      : super('DeleteCoipCidrRequest');

  @override
  Iterable<Type> get types => const [
        DeleteCoipCidrRequest,
        _$DeleteCoipCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCoipCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCoipCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CoipPoolId':
          result.coipPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteCoipCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteCoipCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteCoipCidrRequest(:cidr, :coipPoolId, :dryRun) = object;
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (coipPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('CoipPoolId'))
        ..add(serializers.serialize(
          coipPoolId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}