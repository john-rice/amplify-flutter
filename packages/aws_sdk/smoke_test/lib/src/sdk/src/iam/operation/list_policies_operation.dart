// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.operation.list_policies_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart';

/// Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies.
///
/// You can filter the list of policies that is returned using the optional `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list only the customer managed policies in your Amazon Web Services account, set `Scope` to `Local`. To list only Amazon Web Services managed policies, set `Scope` to `AWS`.
///
/// You can paginate the results using the `MaxItems` and `Marker` parameters.
///
/// For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
///
/// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see GetPolicy.
class ListPoliciesOperation extends _i1.PaginatedHttpOperation<
    ListPoliciesRequest,
    ListPoliciesRequest,
    ListPoliciesResponse,
    ListPoliciesResponse,
    String,
    int,
    _i2.BuiltList<Policy>> {
  /// Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies.
  ///
  /// You can filter the list of policies that is returned using the optional `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list only the customer managed policies in your Amazon Web Services account, set `Scope` to `Local`. To list only Amazon Web Services managed policies, set `Scope` to `AWS`.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see GetPolicy.
  ListPoliciesOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<ListPoliciesRequest, ListPoliciesRequest,
          ListPoliciesResponse, ListPoliciesResponse>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListPolicies',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        )
      ],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(ListPoliciesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ListPoliciesResponse? output]) => 200;
  @override
  ListPoliciesResponse buildOutput(
    ListPoliciesResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      ListPoliciesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ServiceFailureException, ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          ServiceFailureException,
          statusCode: 500,
          builder: ServiceFailureException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListPolicies';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ListPoliciesResponse> run(
    ListPoliciesRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(ListPoliciesResponse output) => output.marker;
  @override
  _i2.BuiltList<Policy> getItems(ListPoliciesResponse output) =>
      output.policies ?? _i2.BuiltList();
  @override
  ListPoliciesRequest rebuildInput(
    ListPoliciesRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.marker = token;
        if (pageSize != null) {
          b.maxItems = pageSize;
        }
      });
}
