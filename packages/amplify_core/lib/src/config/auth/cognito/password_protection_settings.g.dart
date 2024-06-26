// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'password_protection_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordProtectionSettings _$PasswordProtectionSettingsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PasswordProtectionSettings',
      json,
      ($checkedConvert) {
        final val = PasswordProtectionSettings(
          passwordPolicyMinLength: $checkedConvert('passwordPolicyMinLength',
              (v) => const _PasswordPolicyMinLengthConverter().fromJson(v)),
          passwordPolicyCharacters: $checkedConvert(
              'passwordPolicyCharacters',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          $enumDecode(_$PasswordPolicyCharactersEnumMap, e))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$PasswordProtectionSettingsToJson(
    PasswordProtectionSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'passwordPolicyMinLength',
      const _PasswordPolicyMinLengthConverter()
          .toJson(instance.passwordPolicyMinLength));
  val['passwordPolicyCharacters'] = instance.passwordPolicyCharacters
      .map((e) => _$PasswordPolicyCharactersEnumMap[e]!)
      .toList();
  return val;
}

const _$PasswordPolicyCharactersEnumMap = {
  PasswordPolicyCharacters.requiresLowercase: 'REQUIRES_LOWERCASE',
  PasswordPolicyCharacters.requiresUppercase: 'REQUIRES_UPPERCASE',
  PasswordPolicyCharacters.requiresNumbers: 'REQUIRES_NUMBERS',
  PasswordPolicyCharacters.requiresSymbols: 'REQUIRES_SYMBOLS',
};
