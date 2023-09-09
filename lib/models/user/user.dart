import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    this.email,
    this.password,
    this.username,
    this.role,
    this.image,
  });

  final String id;
  final String? email;
  final String? password;
  final String? username;
  final int? role;
  final String? image;

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [id, email, password, username, role, image];
}
