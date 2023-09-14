import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/models.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firestore,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  var currentUser = User.empty;

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().asyncMap((firebaseUser) async {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      currentUser = user;

      if (firebaseUser != null) {
        // Fetch user data from Firestore and update the user object
        final userData = await fetchUserData(firebaseUser.uid);
        if (userData != null) {
          currentUser = updateUserEmail(
              currentUser,
              userData.id,
              userData.email,
              user.password,
              userData.username,
              userData.role,
              userData.image);
        }
      }

      return currentUser;
    });
  }

  Future<User?> fetchUserData(String userId) async {
    try {
      final userDoc = await _firestore.collection('user').doc(userId).get();

      if (userDoc.exists) {
        // Create a User object from Firestore data and return it
        return User.fromFirestore(userDoc.data() as Map<String, dynamic>);
      }
      return null; // User not found in Firestore
    } catch (_) {
      return null; // Handle errors
    }
  }

  Future<void> signup({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {}
  }

  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // After successful login, fetch user data from Firestore
      final firebaseUser = _firebaseAuth.currentUser;
      final userDoc =
          await _firestore.collection('user').doc(firebaseUser?.uid).get();

      if (userDoc.exists) {
        // Create a User object from Firestore data and update currentUser
        currentUser =
            User.fromFirestore(userDoc.data() as Map<String, dynamic>);
      }
    } catch (_) {}
  }

  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
      ]);
    } catch (_) {}
  }

  User updateUserEmail(
      User user,
      String newId,
      String? newEmail,
      String? newPassword,
      String? newUsername,
      int? newRole,
      String? newImage) {
    return User(
      id: newId,
      email: newEmail,
      password: newPassword,
      username: newUsername,
      role: newRole,
      image: newImage,
    );
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(id: uid, email: email, username: displayName, image: photoURL);
  }
}
