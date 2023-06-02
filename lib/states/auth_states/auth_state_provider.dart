import 'package:boopee/screens/cgu.dart';
import 'package:boopee/screens/verify.dart';
import 'package:boopee/states/auth_states/auth_state.dart';
import 'package:boopee/states/datasources/auth_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final authBlocProvider = StateNotifierProvider<AuthStateProvider, AuthState>(
    (ref) => AuthStateProvider());

class AuthStateProvider extends StateNotifier<AuthState> {
  AuthStateProvider() : super(AuthState.initial());

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final AuthDatasource _authDatasource = AuthDatasource();

  Future<void> signInWithPhoneNumber(
      {required BuildContext context, required String phone}) async {
    state = state.copyWith(showLoding: true);
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          state =
              state.copyWith(showLoding: false, errorMessage: e.message ?? "");
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken) async {
          state = state.copyWith(
              verificationId: verificationId,
              showLoding: false,
              phoneNumber: phone);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const VerifyScreen();
          }));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          state = state.copyWith(
              showLoding: false, errorMessage: "Receive code timeout!");
        },
      );
    } catch (e) {
      state = state.copyWith(showLoding: false, errorMessage: e.toString());
      print(e);
    }
  }

  Future<void> signInWithOTP(
      {required BuildContext context, required String smsCode}) async {
    state = state.copyWith(showLoding: true);
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: state.verificationId,
        smsCode: smsCode,
      );
      final user = await _firebaseAuth.signInWithCredential(credential);
      state = state.copyWith(showLoding: false, userId: user.user!.uid);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const CGUScreen();
      }));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Verification code is not correct!"),
          backgroundColor: Colors.red[400],
        ),
      );
      state = state.copyWith(showLoding: false, errorMessage: e.toString());
      print(e);
    }
  }

  Stream<User?> get authStateChanges => _authDatasource.authStateChanges;

  Future<User?> getCurrentUser() async {
    return _authDatasource.getCurrentUser();
  }

  Future<void> signOut() async {
    await _authDatasource.signOut();
  }
}
