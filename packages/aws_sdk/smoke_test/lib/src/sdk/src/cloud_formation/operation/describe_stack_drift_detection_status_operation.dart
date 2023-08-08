// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.describe_stack_drift_detection_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/describe_stack_drift_detection_status_output.dart';

/// Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
///
/// Use DetectStackDrift to initiate a stack drift detection operation. `DetectStackDrift` returns a `StackDriftDetectionId` you can use to monitor the progress of the operation using `DescribeStackDriftDetectionStatus`. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
class DescribeStackDriftDetectionStatusOperation extends _i1.HttpOperation<
    DescribeStackDriftDetectionStatusInput,
    DescribeStackDriftDetectionStatusInput,
    DescribeStackDriftDetectionStatusOutput,
    DescribeStackDriftDetectionStatusOutput> {
  /// Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Use DetectStackDrift to initiate a stack drift detection operation. `DetectStackDrift` returns a `StackDriftDetectionId` you can use to monitor the progress of the operation using `DescribeStackDriftDetectionStatus`. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
  DescribeStackDriftDetectionStatusOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          DescribeStackDriftDetectionStatusInput,
          DescribeStackDriftDetectionStatusInput,
          DescribeStackDriftDetectionStatusOutput,
          DescribeStackDriftDetectionStatusOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeStackDriftDetectionStatus',
      version: '2010-05-15',
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(DescribeStackDriftDetectionStatusInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeStackDriftDetectionStatusOutput? output]) => 200;
  @override
  DescribeStackDriftDetectionStatusOutput buildOutput(
    DescribeStackDriftDetectionStatusOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DescribeStackDriftDetectionStatusOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeStackDriftDetectionStatus';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeStackDriftDetectionStatusOutput> run(
    DescribeStackDriftDetectionStatusInput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
