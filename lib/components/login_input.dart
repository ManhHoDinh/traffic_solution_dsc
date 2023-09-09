import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  final TextEditingController controller;
  LoginInput({
    required this.controller,
  });

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(),
      validator: (value) => null, // Validator function
    );
  }
}
