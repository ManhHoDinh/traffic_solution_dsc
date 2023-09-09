import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  PasswordInput({
    required this.controller,
  });

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isPasswordVisible = false;

  // String? _validatePassword(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Password is required';
  //   }
  //   if (value.length < 6) {
  //     return 'Password must be at least 6 characters';
  //   }
  //   // Add any other validation criteria here as needed
  //   return null; // Return null if validation succeeds
  // }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),
      ),
      validator: (value) => null, // Validator function
    );
  }
}
