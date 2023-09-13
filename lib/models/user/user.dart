import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    this.email,
    this.password,
    this.username,
    this.role, // Change the type to int?
    this.image,
  });

  final String id;
  final String? email;
  final String? password;
  final String? username;
  final int? role; // Change the type to int?
  final String? image;

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  // Create a User object from Firestore data
  factory User.fromFirestore(Map<String, dynamic> data) {
    return User(
      id: data['id'] ?? '',
      email: data['email'] ?? '',
      password: data['password'] ?? '',
      username: data['username'] ?? '',
      role: data['role'] ??
          0, // Change the default value to 0 or whatever suits your needs
      image: data['image'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, email, password, username, role, image];
}
