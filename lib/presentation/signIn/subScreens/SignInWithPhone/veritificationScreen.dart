import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authCubit.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authState.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController verificationCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In With Phone'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(children: [
          TextField(
            controller: verificationCodeController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: '6-Digits OTP',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          SizedBox(
            height: 30,
          ),
          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is AuthLoggedInState) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomeScreen()));
              } else if (state is AuthErrorState) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.error)));
              }
            },
            builder: (context, state) {
              if (state is AuthLoadingState) {
                return CircularProgressIndicator();
              }
              return Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (_) => PhoneSignIn()));
                      BlocProvider.of<AuthCubit>(context)
                          .verifyOTP(verificationCodeController.text);
                    },
                    child: Text('Verify')),
              );
            },
          )
        ]),
      ),
    );
  }
}
