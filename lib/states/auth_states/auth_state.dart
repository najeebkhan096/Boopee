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
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        showLoding: false,
        errorMessage: "",
        phoneNumber: "",
        verificationId: "",
        smsCode: "",
        userId: "",
        registerRequestModel: RegisterRequestModel.initial(),
      );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
