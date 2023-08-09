// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_instance_state_fault.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotInstanceStateFault extends SpotInstanceStateFault {
  @override
  final String? code;
  @override
  final String? message;

  factory _$SpotInstanceStateFault(
          [void Function(SpotInstanceStateFaultBuilder)? updates]) =>
      (new SpotInstanceStateFaultBuilder()..update(updates))._build();

  _$SpotInstanceStateFault._({this.code, this.message}) : super._();

  @override
  SpotInstanceStateFault rebuild(
          void Function(SpotInstanceStateFaultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotInstanceStateFaultBuilder toBuilder() =>
      new SpotInstanceStateFaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotInstanceStateFault &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotInstanceStateFaultBuilder
    implements Builder<SpotInstanceStateFault, SpotInstanceStateFaultBuilder> {
  _$SpotInstanceStateFault? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SpotInstanceStateFaultBuilder();

  SpotInstanceStateFaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotInstanceStateFault other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotInstanceStateFault;
  }

  @override
  void update(void Function(SpotInstanceStateFaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotInstanceStateFault build() => _build();

  _$SpotInstanceStateFault _build() {
    final _$result =
        _$v ?? new _$SpotInstanceStateFault._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint