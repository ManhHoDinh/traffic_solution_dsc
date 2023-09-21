import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/constraints/size_config.dart';
import 'package:traffic_solution_dsc/presentation/screens/Authentication/forget_password_screen.dart';
import '../../cubits/cubits.dart';
import '../../repositories/repositories.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';

late Size mediaSize;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/login";
  static Page page() => const MaterialPage<void>(child: LoginScreen());
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(context.read<AuthRepository>()),
        child: const LoginUI(),
      ),
    );
  }
}

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          // Remove focus from the text fields when tapping outside
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: mediaSize.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(top: 20, child: _buildTop()),
                Positioned(bottom: 0, child: _buildBottom(context)),
              ],
            ),
          ),
        ));
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            color: Colors.transparent,
            image: const AssetImage("assets/images/bg.png"),
          ),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(context),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLogo(),
        const SizedBox(height: 20),
        Text(
          "Welcome",
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 32,
              fontWeight: FontWeight.w500),
        ),
        _buildGreyText("Let’s login for explore continues"),
        const SizedBox(height: 30),
        _buildGreyText("Email address"),
        _EmailInput(),
        const SizedBox(height: 40),
        _buildGreyText("Password"),
        _PasswordInput(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(), // Add Spacer widget to push the text to the right
            TextButton(
              onPressed: () {
                Navigator.of(context).push<void>(ForgotPasswordScreen.route());
              },
              child: _buildRedText("Forget Password?"),
            ),
          ],
        ),
        const SizedBox(height: 15),
        _LoginButton(),
        const SizedBox(height: 15),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildRedText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.red),
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage("assets/images/bg.png")),
          RichText(
            text: TextSpan(
              text: 'City',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Sense',
                  style: TextStyle(
                    color: Color(0xFF82EDD7),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
              onChanged: (email) {
                context.read<LoginCubit>().emailChanged(email);
              },
              decoration: const InputDecoration(),
              validator: (email) {
                final bool emailValid = RegExp(
                        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(email!);
                if (email.isEmpty) {
                  return "Please enter username";
                } else if (!emailValid) {
                  return "Email is not Invalid";
                }
              }),
          if (state.emailError != '') _buildRedText(state.emailError),
        ]);
      },
    );
  }

  Widget _buildRedText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.red),
    );
  }
}

class _PasswordInput extends StatefulWidget {
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
              onChanged: (password) {
                context.read<LoginCubit>().passwordChanged(password);
              },
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
              validator: (password) {
                if (password == "") {
                  return "Please enter your password!";
                } else if (password != null && password.length <= 6) {
                  return "Password is too short!";
                }
              }
              // Validator function
              ),
          if (state.passwordError != '') _buildRedText(state.passwordError),
        ]);
      },
    );
  }

  Widget _buildRedText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.red),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: AppColors.primary,
            minimumSize:
                Size(double.infinity, getProportionateScreenHeight(56)),
          ),
          onPressed: () {
            context.read<LoginCubit>().logInWithCredentials();
            Navigator.pop(context);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white,
                ),
              ),
              if (state.status == LoginStatus.submitting)
                CircularProgressIndicator(
                  color: Colors.white,
                ),
            ],
          ),
        );
      },
    );
  }
}
