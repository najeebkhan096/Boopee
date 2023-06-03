// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      showLoding: json['showLoding'] as bool,
      errorMessage: json['errorMessage'] as String,
      phoneNumber: json['phoneNumber'] as String,
      verificationId: json['verificationId'] as String,
      smsCode: json['smsCode'] as String,
      userId: json['userId'] as String,
      registerRequestModel: json['registerRequestModel'] == null
          ? null
          : RegisterRequestModel.fromJson(
              json['registerRequestModel'] as Map<String, dynamic>),
      petDob: json['petDob'] as String,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'showLoding': instance.showLoding,
      'errorMessage': instance.errorMessage,
      'phoneNumber': instance.phoneNumber,
      'verificationId': instance.verificationId,
      'smsCode': instance.smsCode,
      'userId': instance.userId,
      'registerRequestModel': instance.registerRequestModel,
      'petDob': instance.petDob,
    };
