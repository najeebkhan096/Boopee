import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool showLoding,
    required String errorMessage,
    required String verificationId,
    required String smsCode,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        showLoding: false,
        errorMessage: "",
        verificationId: "",
        smsCode: "",
      );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
