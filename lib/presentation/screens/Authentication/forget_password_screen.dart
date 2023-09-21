import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:traffic_solution_dsc/core/constants/dimension_constants.dart';
import 'package:traffic_solution_dsc/core/constants/text_styles.dart';

import 'package:traffic_solution_dsc/core/constants/color_palatte.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/input_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  static final String routeName = 'forgot_password';
  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const ForgotPasswordScreen());
  }

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        title: InkWell(
          child: Text(
            'Forgot your password',
            textAlign: TextAlign.center,
          ),
          onTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 200,
          ),
          Text(
            'Enter your email to reset your password!',
            style: TextStyles.defaultStyle.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InputWidget(
                controller: _emailController,
                labelText: 'Enter your user name',
                icon: 'assets/icons/ico_user.png',
                validator: (input) {
                  final bool emailValid = RegExp(
                          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                      .hasMatch(input!);
                  if (input == "") {
                    return "Please enter your email!";
                  } else if (!emailValid) {
                    return "Email is invalid";
                  }
                }),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ButtonWidget(
              label: 'Reset Password',
              color: ColorPalette.primaryColor,
              onTap: resetPassword,
            ),
          ),
        ]),
      ),
    );
  }

  Future resetPassword() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Password reset email sent!')));
      Navigator.popUntil(context, ModalRoute.withName('/login'));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    }
  }
}
