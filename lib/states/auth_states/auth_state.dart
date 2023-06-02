import 'package:firebase_auth/firebase_auth.dart';
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
    required String userId,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        showLoding: false,
        errorMessage: "",
        verificationId: "",
        smsCode: "",
        userId: "",
      );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}