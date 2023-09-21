part of 'login_cubit.dart';

enum LoginStatus { initial, submitting, success, error }

class LoginState extends Equatable {
  final String emailError;
  final String passwordError;
  final String email;
  final String password;
  final LoginStatus status;

  const LoginState({
    required this.emailError,
    required this.passwordError,
    required this.email,
    required this.password,
    required this.status,
  });

  factory LoginState.initial() {
    return const LoginState(
      emailError: '',
      passwordError: '',
      email: '',
      password: '',
      status: LoginStatus.initial,
    );
  }

  LoginState copyWith({
    String? emailError,
    String? passwordError,
    String? email,
    String? password,
    LoginStatus? status,
  }) {
    return LoginState(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [email, password, status];
}
