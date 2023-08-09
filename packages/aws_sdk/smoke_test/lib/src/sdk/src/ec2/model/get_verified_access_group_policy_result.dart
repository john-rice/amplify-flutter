// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_verified_access_group_policy_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_verified_access_group_policy_result.g.dart';

abstract class GetVerifiedAccessGroupPolicyResult
    with
        _i1.AWSEquatable<GetVerifiedAccessGroupPolicyResult>
    implements
        Built<GetVerifiedAccessGroupPolicyResult,
            GetVerifiedAccessGroupPolicyResultBuilder> {
  factory GetVerifiedAccessGroupPolicyResult({
    bool? policyEnabled,
    String? policyDocument,
  }) {
    policyEnabled ??= false;
    return _$GetVerifiedAccessGroupPolicyResult._(
      policyEnabled: policyEnabled,
      policyDocument: policyDocument,
    );
  }

  factory GetVerifiedAccessGroupPolicyResult.build(
          [void Function(GetVerifiedAccessGroupPolicyResultBuilder) updates]) =
      _$GetVerifiedAccessGroupPolicyResult;

  const GetVerifiedAccessGroupPolicyResult._();

  /// Constructs a [GetVerifiedAccessGroupPolicyResult] from a [payload] and [response].
  factory GetVerifiedAccessGroupPolicyResult.fromResponse(
    GetVerifiedAccessGroupPolicyResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetVerifiedAccessGroupPolicyResult>>
      serializers = [GetVerifiedAccessGroupPolicyResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVerifiedAccessGroupPolicyResultBuilder b) {
    b.policyEnabled = false;
  }

  /// The status of the Verified Access policy.
  bool get policyEnabled;

  /// The Verified Access policy document.
  String? get policyDocument;
  @override
  List<Object?> get props => [
        policyEnabled,
        policyDocument,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVerifiedAccessGroupPolicyResult')
          ..add(
            'policyEnabled',
            policyEnabled,
          )
          ..add(
            'policyDocument',
            policyDocument,
          );
    return helper.toString();
  }
}

class GetVerifiedAccessGroupPolicyResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetVerifiedAccessGroupPolicyResult> {
  const GetVerifiedAccessGroupPolicyResultEc2QuerySerializer()
      : super('GetVerifiedAccessGroupPolicyResult');

  @override
  Iterable<Type> get types => const [
        GetVerifiedAccessGroupPolicyResult,
        _$GetVerifiedAccessGroupPolicyResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVerifiedAccessGroupPolicyResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVerifiedAccessGroupPolicyResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'policyEnabled':
          result.policyEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'policyDocument':
          result.policyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetVerifiedAccessGroupPolicyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetVerifiedAccessGroupPolicyResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVerifiedAccessGroupPolicyResult(:policyEnabled, :policyDocument) =
        object;
    result$
      ..add(const _i2.XmlElementName('PolicyEnabled'))
      ..add(serializers.serialize(
        policyEnabled,
        specifiedType: const FullType(bool),
      ));
    if (policyDocument != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}