// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.change_set_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execution_status.dart'
    as _i2;

part 'change_set_summary.g.dart';

/// The `ChangeSetSummary` structure describes a change set, its status, and the stack with which it's associated.
abstract class ChangeSetSummary
    with _i1.AWSEquatable<ChangeSetSummary>
    implements Built<ChangeSetSummary, ChangeSetSummaryBuilder> {
  /// The `ChangeSetSummary` structure describes a change set, its status, and the stack with which it's associated.
  factory ChangeSetSummary({
    String? stackId,
    String? stackName,
    String? changeSetId,
    String? changeSetName,
    _i2.ExecutionStatus? executionStatus,
    _i3.ChangeSetStatus? status,
    String? statusReason,
    DateTime? creationTime,
    String? description,
    bool? includeNestedStacks,
    String? parentChangeSetId,
    String? rootChangeSetId,
  }) {
    return _$ChangeSetSummary._(
      stackId: stackId,
      stackName: stackName,
      changeSetId: changeSetId,
      changeSetName: changeSetName,
      executionStatus: executionStatus,
      status: status,
      statusReason: statusReason,
      creationTime: creationTime,
      description: description,
      includeNestedStacks: includeNestedStacks,
      parentChangeSetId: parentChangeSetId,
      rootChangeSetId: rootChangeSetId,
    );
  }

  /// The `ChangeSetSummary` structure describes a change set, its status, and the stack with which it's associated.
  factory ChangeSetSummary.build(
      [void Function(ChangeSetSummaryBuilder) updates]) = _$ChangeSetSummary;

  const ChangeSetSummary._();

  static const List<_i4.SmithySerializer> serializers = [
    ChangeSetSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangeSetSummaryBuilder b) {}

  /// The ID of the stack with which the change set is associated.
  String? get stackId;

  /// The name of the stack with which the change set is associated.
  String? get stackName;

  /// The ID of the change set.
  String? get changeSetId;

  /// The name of the change set.
  String? get changeSetName;

  /// If the change set execution status is `AVAILABLE`, you can execute the change set. If you can't execute the change set, the status indicates why. For example, a change set might be in an `UNAVAILABLE` state because CloudFormation is still creating it or in an `OBSOLETE` state because the stack was already updated.
  _i2.ExecutionStatus? get executionStatus;

  /// The state of the change set, such as `CREATE\_IN\_PROGRESS`, `CREATE_COMPLETE`, or `FAILED`.
  _i3.ChangeSetStatus? get status;

  /// A description of the change set's status. For example, if your change set is in the `FAILED` state, CloudFormation shows the error message.
  String? get statusReason;

  /// The start time when the change set was created, in UTC.
  DateTime? get creationTime;

  /// Descriptive information about the change set.
  String? get description;

  /// Specifies the current setting of `IncludeNestedStacks` for the change set.
  bool? get includeNestedStacks;

  /// The parent change set ID.
  String? get parentChangeSetId;

  /// The root change set ID.
  String? get rootChangeSetId;
  @override
  List<Object?> get props => [
        stackId,
        stackName,
        changeSetId,
        changeSetName,
        executionStatus,
        status,
        statusReason,
        creationTime,
        description,
        includeNestedStacks,
        parentChangeSetId,
        rootChangeSetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangeSetSummary');
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'changeSetId',
      changeSetId,
    );
    helper.add(
      'changeSetName',
      changeSetName,
    );
    helper.add(
      'executionStatus',
      executionStatus,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusReason',
      statusReason,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'includeNestedStacks',
      includeNestedStacks,
    );
    helper.add(
      'parentChangeSetId',
      parentChangeSetId,
    );
    helper.add(
      'rootChangeSetId',
      rootChangeSetId,
    );
    return helper.toString();
  }
}

class ChangeSetSummaryAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ChangeSetSummary> {
  const ChangeSetSummaryAwsQuerySerializer() : super('ChangeSetSummary');

  @override
  Iterable<Type> get types => const [
        ChangeSetSummary,
        _$ChangeSetSummary,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ChangeSetSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeSetSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChangeSetId':
          if (value != null) {
            result.changeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChangeSetName':
          if (value != null) {
            result.changeSetName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExecutionStatus':
          if (value != null) {
            result.executionStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExecutionStatus),
            ) as _i2.ExecutionStatus);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ChangeSetStatus),
            ) as _i3.ChangeSetStatus);
          }
          break;
        case 'StatusReason':
          if (value != null) {
            result.statusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IncludeNestedStacks':
          if (value != null) {
            result.includeNestedStacks = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ParentChangeSetId':
          if (value != null) {
            result.parentChangeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RootChangeSetId':
          if (value != null) {
            result.rootChangeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ChangeSetSummary);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ChangeSetSummaryResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackId != null) {
      result
        ..add(const _i4.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackName != null) {
      result
        ..add(const _i4.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.changeSetId != null) {
      result
        ..add(const _i4.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          payload.changeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.changeSetName != null) {
      result
        ..add(const _i4.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          payload.changeSetName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.executionStatus != null) {
      result
        ..add(const _i4.XmlElementName('ExecutionStatus'))
        ..add(serializers.serialize(
          payload.executionStatus!,
          specifiedType: const FullType.nullable(_i2.ExecutionStatus),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.ChangeSetStatus),
        ));
    }
    if (payload.statusReason != null) {
      result
        ..add(const _i4.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          payload.statusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i4.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.includeNestedStacks != null) {
      result
        ..add(const _i4.XmlElementName('IncludeNestedStacks'))
        ..add(serializers.serialize(
          payload.includeNestedStacks!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.parentChangeSetId != null) {
      result
        ..add(const _i4.XmlElementName('ParentChangeSetId'))
        ..add(serializers.serialize(
          payload.parentChangeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rootChangeSetId != null) {
      result
        ..add(const _i4.XmlElementName('RootChangeSetId'))
        ..add(serializers.serialize(
          payload.rootChangeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}