abstract class SignInEvent {}

class SignInTextChangedEvent extends SignInEvent {
  final String EmailValue;
  final String PasswordValue;
  SignInTextChangedEvent(this.EmailValue, this.PasswordValue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}
