import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../models/user/user.dart';
import '../../../repositories/repositories.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(LoginState.initial());

  void emailChanged(String value) {
    emit(
      state.copyWith(
        email: value,
        status: LoginStatus.initial,
      ),
    );
  }

  void passwordChanged(String value) {
    emit(
      state.copyWith(
        password: value,
        status: LoginStatus.initial,
      ),
    );
  }

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

  Future<void> logInWithCredentials() async {
    if (state.status == LoginStatus.submitting) return;
    emit(state.copyWith(status: LoginStatus.submitting));
    try {
      await _authRepository.logInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      emit(state.copyWith(status: LoginStatus.success));
    } catch (_) {}
  }
}
