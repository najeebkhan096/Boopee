// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestModel _$$_RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterRequestModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      pseudo: json['pseudo'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      isTosAccepted: json['is_tos_accepted'] as bool,
      isOfferNotificationsEnabled:
          json['is_offer_notifications_enabled'] as bool,
      isGpsEnabled: json['is_gps_enabled'] as bool,
      dob: json['dob'] as String,
      petDescription: json['pet_description'] as String,
      petAudio: json['pet_audio'] as String,
      qrCode: json['qr_code'] as String,
      isMatchNotificationsEnabled:
          json['is_match_notifications_enabled'] as bool,
      isMessageNotificationsEnabled:
          json['is_message_notifications_enabled'] as bool,
      isPositionNotificationsEnabled:
          json['is_position_notifications_enabled'] as bool,
      deleteReasonId: json['delete_reason_id'] as String,
      isSuspended: json['is_suspended'] as bool,
      ownerGenderId: json['owner_gender_id'] as String,
      petName: json['pet_name'] as String,
      petSize: json['pet_size'] as String,
      petWeight: json['pet_weight'] as String,
      petPhoto: json['pet_image'] as String,
      breedId: json['breed_id'] as String,
      mBreedId: json['m_breed_id'] as String,
      fBreedId: json['f_breed_id'] as String,
      document: json['document'] as String,
      petGenderId: json['pet_gender_id'] as String,
      isPetLost: json['is_pet_lost'] as bool,
      isSterilized: json['is_sterilized'] as bool,
      isDeleted: json['is_deleted'] as bool,
    );

Map<String, dynamic> _$$_RegisterRequestModelToJson(
        _$_RegisterRequestModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'pseudo': instance.pseudo,
      'password': instance.password,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'is_tos_accepted': instance.isTosAccepted,
      'is_offer_notifications_enabled': instance.isOfferNotificationsEnabled,
      'is_gps_enabled': instance.isGpsEnabled,
      'dob': instance.dob,
      'pet_description': instance.petDescription,
      'pet_audio': instance.petAudio,
      'qr_code': instance.qrCode,
      'is_match_notifications_enabled': instance.isMatchNotificationsEnabled,
      'is_message_notifications_enabled':
          instance.isMessageNotificationsEnabled,
      'is_position_notifications_enabled':
          instance.isPositionNotificationsEnabled,
      'delete_reason_id': instance.deleteReasonId,
      'is_suspended': instance.isSuspended,
      'owner_gender_id': instance.ownerGenderId,
      'pet_name': instance.petName,
      'pet_size': instance.petSize,
      'pet_weight': instance.petWeight,
      'pet_image': instance.petPhoto,
      'breed_id': instance.breedId,
      'm_breed_id': instance.mBreedId,
      'f_breed_id': instance.fBreedId,
      'document': instance.document,
      'pet_gender_id': instance.petGenderId,
      'is_pet_lost': instance.isPetLost,
      'is_sterilized': instance.isSterilized,
      'is_deleted': instance.isDeleted,
    };
