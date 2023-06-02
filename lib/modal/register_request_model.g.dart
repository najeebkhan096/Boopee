// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestModel _$$_RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterRequestModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      pseudo: json['pseudo'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isTosAccepted: json['isTosAccepted'] as bool,
      isOfferNotificationsEnabled: json['isOfferNotificationsEnabled'] as bool,
      isGpsEnabled: json['isGpsEnabled'] as bool,
      dob: json['dob'] as String,
      petDescription: json['petDescription'] as String,
      petAudio: json['petAudio'] as String,
      qrCode: json['qrCode'] as String,
      isMatchNotificationsEnabled: json['isMatchNotificationsEnabled'] as bool,
      isMessageNotificationsEnabled:
          json['isMessageNotificationsEnabled'] as bool,
      isPositionNotificationsEnabled:
          json['isPositionNotificationsEnabled'] as bool,
      deleteReasonId: json['deleteReasonId'] as String,
      isSuspended: json['isSuspended'] as bool,
      ownerGenderId: json['ownerGenderId'] as String,
      petName: json['petName'] as String,
      petSize: json['petSize'] as String,
      petWeight: json['petWeight'] as String,
      breedId: json['breedId'] as String,
      mBreedId: json['mBreedId'] as String,
      fBreedId: json['fBreedId'] as String,
      document: json['document'] as String,
      petGenderId: json['petGenderId'] as String,
      isPetLost: json['isPetLost'] as bool,
      isSterilized: json['isSterilized'] as bool,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$_RegisterRequestModelToJson(
        _$_RegisterRequestModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'pseudo': instance.pseudo,
      'password': instance.password,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isTosAccepted': instance.isTosAccepted,
      'isOfferNotificationsEnabled': instance.isOfferNotificationsEnabled,
      'isGpsEnabled': instance.isGpsEnabled,
      'dob': instance.dob,
      'petDescription': instance.petDescription,
      'petAudio': instance.petAudio,
      'qrCode': instance.qrCode,
      'isMatchNotificationsEnabled': instance.isMatchNotificationsEnabled,
      'isMessageNotificationsEnabled': instance.isMessageNotificationsEnabled,
      'isPositionNotificationsEnabled': instance.isPositionNotificationsEnabled,
      'deleteReasonId': instance.deleteReasonId,
      'isSuspended': instance.isSuspended,
      'ownerGenderId': instance.ownerGenderId,
      'petName': instance.petName,
      'petSize': instance.petSize,
      'petWeight': instance.petWeight,
      'breedId': instance.breedId,
      'mBreedId': instance.mBreedId,
      'fBreedId': instance.fBreedId,
      'document': instance.document,
      'petGenderId': instance.petGenderId,
      'isPetLost': instance.isPetLost,
      'isSterilized': instance.isSterilized,
      'isDeleted': instance.isDeleted,
    };
