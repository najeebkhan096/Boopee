import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String pseudo,
    required String password,
    required String email,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'is_tos_accepted') required bool isTosAccepted,
    @JsonKey(name: 'is_offer_notifications_enabled')
        required bool isOfferNotificationsEnabled,
    @JsonKey(name: 'is_gps_enabled') required bool isGpsEnabled,
    required String dob,
    @JsonKey(name: 'pet_description') required String petDescription,
    @JsonKey(name: 'pet_audio') required String petAudio,
    @JsonKey(name: 'qr_code') required String qrCode,
    @JsonKey(name: 'is_match_notifications_enabled')
        required bool isMatchNotificationsEnabled,
    @JsonKey(name: 'is_message_notifications_enabled')
        required bool isMessageNotificationsEnabled,
    @JsonKey(name: 'is_position_notifications_enabled')
        required bool isPositionNotificationsEnabled,
    @JsonKey(name: 'delete_reason_id') required String deleteReasonId,
    @JsonKey(name: 'is_suspended') required bool isSuspended,
    @JsonKey(name: 'owner_gender_id') required String ownerGenderId,
    @JsonKey(name: 'pet_name') required String petName,
    @JsonKey(name: 'pet_size') required String petSize,
    @JsonKey(name: 'pet_weight') required String petWeight,
    @JsonKey(name: 'pet_image') required String petPhoto,
    @JsonKey(name: 'breed_id') required String breedId,
    @JsonKey(name: 'm_breed_id') required String mBreedId,
    @JsonKey(name: 'f_breed_id') required String fBreedId,
    required String document,
    @JsonKey(name: 'pet_gender_id') required String petGenderId,
    @JsonKey(name: 'is_pet_lost') required bool isPetLost,
    @JsonKey(name: 'is_sterilized') required bool isSterilized,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.initial() => const RegisterRequestModel(
        firstName: '',
        lastName: '',
        pseudo: '',
        password: '',
        email: '',
        phoneNumber: '',
        isTosAccepted: true,
        isOfferNotificationsEnabled: true,
        isGpsEnabled: true,
        dob: '',
        petDescription: '',
        petAudio: '',
        qrCode: '',
        isMatchNotificationsEnabled: true,
        isMessageNotificationsEnabled: true,
        isPositionNotificationsEnabled: true,
        deleteReasonId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        isSuspended: true,
        ownerGenderId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        petName: '',
        petSize: '',
        petWeight: '',
        petPhoto: '',
        breedId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        mBreedId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        fBreedId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        document: '',
        petGenderId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        isPetLost: true,
        isSterilized: true,
        isDeleted: true,
      );

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}
