import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInEvent.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInState.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInTextChangedEvent>(((event, emit) {
      if (EmailValidator.validate(event.EmailValue) == false) {
        emit(SignInErrorState("Please enter a valid email address"));
      } else if (event.PasswordValue.length < 8) {
        emit(SignInErrorState("Please enter a valid password"));
      } else
        emit(SignInValidState());
    }));
    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
