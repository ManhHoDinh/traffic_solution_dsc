import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthCodeSentState extends AuthState {}

class AuthCodeVerifiedState extends AuthState {}

class AuthLoggedInState extends AuthState {
  final User firebaseUser;
  AuthLoggedInState(this.firebaseUser);
}

class AuthLoadingState extends AuthState {}

class AuthLoggedOutState extends AuthState {}

class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}
