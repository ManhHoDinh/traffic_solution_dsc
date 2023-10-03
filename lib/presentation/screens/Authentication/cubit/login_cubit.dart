import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../repositories/repositories.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(LoginState.initial());
  void emailChanged(String value) {
    // Perform email validation
    final isValidEmail = _isValidEmail(value);

    emit(
      state.copyWith(
        email: value,
        emailError: isValidEmail,
        status: LoginStatus.initial,
      ),
    );
  }

  void passwordChanged(String value) {
    // Perform password validation
    final isValidPassword = _isValidPassword(value);

    emit(
      state.copyWith(
        password: value,
        passwordError: isValidPassword,
        status: LoginStatus.initial,
      ),
    );
  }

  String _isValidEmail(String email) {
    // Add your email validation logic here
    // Return true if email is valid, false otherwise
    final bool emailValid = RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(email);
    if (email.isEmpty) {
      return "Please enter username";
    } else if (!emailValid) {
      return "Email is not Invalid";
    }
    return '';
  }

  String _isValidPassword(String password) {
    if (password == "") {
      return "Please enter your password!";
    } else if (password != null && password.length < 6) {
      return "Password is too short!";
    }
    return '';
  }
  // void emailChanged(String value) {

  //   emit(
  //     state.copyWith(
  //       email: value,
  //       status: LoginStatus.initial,
  //     ),
  //   );
  // }

  // void passwordChanged(String value) {
  //   emit(
  //     state.copyWith(
  //       password: value,
  //       status: LoginStatus.initial,
  //     ),
  //   );
  // }

// Future<void> logInWithCredentials() async {
//   if (state.status == LoginStatus.submitting) return;
//   emit(state.copyWith(status: LoginStatus.submitting));
//   try {
//     await _authRepository.logInWithEmailAndPassword(
//       email: state.email,
//       password: state.password,
//     );

//     // After successful login, get the user's data from Firestore
//     final user = await getUserData(_authRepository.currentUser.id);

//     if (user != null) {
//       // You now have the user's data in the 'user' variable.
//       // You can use it as needed.
//     } else {
//       // Handle the case where user data couldn't be fetched
//     }

//     emit(state.copyWith(status: LoginStatus.success));
//   } catch (_) {
//     // Handle login errors
//   }
// }

// Future<User?> getUserData(String userId) async {
//   try {
//     final DocumentSnapshot<Map<String, dynamic>> userDoc =
//         await FirebaseFirestore.instance.collection('users').doc(userId).get();

//     if (userDoc.exists) {
//       final Map<String, dynamic> userData = userDoc.data()!;
//       // Assuming your User class has appropriate fields, you can create a User object here.
//       return User(
//         id: userId,
//         email: userData['email'] ?? '',
//         // Add other fields as needed
//       );
//     } else {
//       return null; // User not found
//     }
//   } catch (e) {
//     // Handle errors (e.g., Firestore not available)
//     print('Error fetching user data: $e');
//     return null;
//   }
// }

  Future<int> logInWithCredentials() async {
    if (state.status == LoginStatus.submitting) return 0;
    emit(state.copyWith(status: LoginStatus.submitting));
    try {
      await _authRepository.logInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      print("correct");
      emit(state.copyWith(status: LoginStatus.success));
      return 1;
    } catch (_) {
      print("incorrect");
      emit(state.copyWith(
          emailError: 'Email or Password is incorrect',
          passwordError: 'Email or Password is incorrect',status: LoginStatus.initial));
      return 0;
    }
  }
}
