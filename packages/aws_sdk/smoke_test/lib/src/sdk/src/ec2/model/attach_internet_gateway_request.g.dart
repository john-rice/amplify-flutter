// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachInternetGatewayRequest extends AttachInternetGatewayRequest {
  @override
  final bool dryRun;
  @override
  final String? internetGatewayId;
  @override
  final String? vpcId;

  factory _$AttachInternetGatewayRequest(
          [void Function(AttachInternetGatewayRequestBuilder)? updates]) =>
      (new AttachInternetGatewayRequestBuilder()..update(updates))._build();

  _$AttachInternetGatewayRequest._(
      {required this.dryRun, this.internetGatewayId, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachInternetGatewayRequest', 'dryRun');
  }

  @override
  AttachInternetGatewayRequest rebuild(
          void Function(AttachInternetGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachInternetGatewayRequestBuilder toBuilder() =>
      new AttachInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachInternetGatewayRequest &&
        dryRun == other.dryRun &&
        internetGatewayId == other.internetGatewayId &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, internetGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachInternetGatewayRequestBuilder
    implements
        Builder<AttachInternetGatewayRequest,
            AttachInternetGatewayRequestBuilder> {
  _$AttachInternetGatewayRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _internetGatewayId;
  String? get internetGatewayId => _$this._internetGatewayId;
  set internetGatewayId(String? internetGatewayId) =>
      _$this._internetGatewayId = internetGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  AttachInternetGatewayRequestBuilder() {
    AttachInternetGatewayRequest._init(this);
  }

  AttachInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _internetGatewayId = $v.internetGatewayId;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachInternetGatewayRequest;
  }

  @override
  void update(void Function(AttachInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachInternetGatewayRequest build() => _build();

  _$AttachInternetGatewayRequest _build() {
    final _$result = _$v ??
        new _$AttachInternetGatewayRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AttachInternetGatewayRequest', 'dryRun'),
            internetGatewayId: internetGatewayId,
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint