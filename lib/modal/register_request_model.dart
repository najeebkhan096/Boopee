import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    required String firstName,
    required String lastName,
    required String pseudo,
    required String password,
    required String email,
    required String phoneNumber,
    required bool isTosAccepted,
    required bool isOfferNotificationsEnabled,
    required bool isGpsEnabled,
    required String dob,
    required String petDescription,
    required String petAudio,
    required String qrCode,
    required bool isMatchNotificationsEnabled,
    required bool isMessageNotificationsEnabled,
    required bool isPositionNotificationsEnabled,
    required String deleteReasonId,
    required bool isSuspended,
    required String ownerGenderId,
    required String petName,
    required String petSize,
    required String petWeight,
    required String breedId,
    required String mBreedId,
    required String fBreedId,
    required String document,
    required String petGenderId,
    required bool isPetLost,
    required bool isSterilized,
    required bool isDeleted,
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
        dob: '2023-06-02',
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
