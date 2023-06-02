// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      showLoding: json['showLoding'] as bool,
      errorMessage: json['errorMessage'] as String,
      verificationId: json['verificationId'] as String,
      smsCode: json['smsCode'] as String,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'showLoding': instance.showLoding,
      'errorMessage': instance.errorMessage,
      'verificationId': instance.verificationId,
      'smsCode': instance.smsCode,
    };
