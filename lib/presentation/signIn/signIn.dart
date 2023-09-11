import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInBloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInEvent.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInState.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/PhoneSignIn.dart';
import 'package:traffic_solution_dsc/presentation/signIn/subScreens/SignInWithPhone/cubit/authCubit.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static String routeName = "/sign_in";
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Sign In With Email'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                if (state is SignInErrorState)
                  return Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      state.errorMessage,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  );
                else
                  return Container();
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              onChanged: (value) {
                BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(hintText: 'Email Address'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              onChanged: (value) {
                BlocProvider.of<SignInBloc>(context).add(SignInTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                if (state is SignInLoadingState) {
                  return CircularProgressIndicator();
                } else {
                  return CupertinoButton(
                      child: Container(
                          width: double.maxFinite,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: state is SignInValidState
                                  ? Colors.blue
                                  : Colors.grey),
                          child: Center(
                              child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => HomeScreen.provider()));
                        // BlocProvider.of<SignInBloc>(context).add(
                        //     SignInSubmittedEvent(
                        //         emailController.text, passwordController.text));
                      });
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BlocProvider(
                            create: (context) => AuthCubit(),
                            child: PhoneSignIn(),
                          )));
                },
                child: Text('Sign In with Phone'))
          ],
        ),
      ),
    );
  }
}
