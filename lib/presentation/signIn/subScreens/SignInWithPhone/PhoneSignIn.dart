import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authCubit.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authState.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/veritificationScreen.dart';

class PhoneSignIn extends StatefulWidget {
  const PhoneSignIn({super.key});

  @override
  State<PhoneSignIn> createState() => _PhoneSignInState();
}

class _PhoneSignInState extends State<PhoneSignIn> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In With Phone'),
        centerTitle: true,
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(children: [
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 30,
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is AuthCodeSentState) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => VerificationScreen()));
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
                          String phoneNumber = "+84" + phoneController.text;
                          print(phoneNumber);
                          BlocProvider.of<AuthCubit>(context)
                              .sendOTP(phoneNumber);
                        },
                        child: Text('Sign In')),
                  );
                },
              )
            ]),
          );
        },
      ),
    );
  }
}
