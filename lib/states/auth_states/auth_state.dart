import 'package:boopee/modal/pet_breeds_model.dart';
import 'package:boopee/modal/pet_tags_model.dart';
import 'package:boopee/modal/register_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool showLoding,
    required String errorMessage,
    required String phoneNumber,
    required String verificationId,
    required String smsCode,
    required String userId,
    required RegisterRequestModel? registerRequestModel,
    required String petDob,
    required PetTags? petTags,
    required PetBreeds? petBreeds,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        showLoding: false,
        errorMessage: "",
        phoneNumber: "",
        verificationId: "",
        smsCode: "",
        userId: "",
        registerRequestModel: RegisterRequestModel.initial(),
        petDob: "",
        petTags: null,
        petBreeds: null,
      );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
