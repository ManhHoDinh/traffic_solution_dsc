import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authState.dart';

class AuthCubit extends Cubit<AuthState> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  AuthCubit() : super(AuthInitialState());
  String? _verificationId;
  void sendOTP(String phoneNumber) async {
    emit(AuthLoadingState());
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) {
          signInWithPhone(phoneAuthCredential);
        },
        verificationFailed: (error) {
          emit(AuthErrorState(error.message.toString()));
        },
        codeSent: (verificationId, forceResendingToken) {
          _verificationId = verificationId;
          emit(AuthCodeSentState());
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId = verificationId;
        });
  }

  void verifyOTP(String otp) async {
    emit(AuthLoadingState());
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!, smsCode: otp);
    signInWithPhone(credential);
  }

  void signInWithPhone(PhoneAuthCredential credential) async {
    try {
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      if (userCredential.user != null)
        emit(AuthLoggedInState(userCredential.user!));
    } on FirebaseAuthException catch (error) {
      emit(AuthErrorState(error.message.toString()));
    }
  }
}
