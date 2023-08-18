import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/InternetConnectedBloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/InternetConnectedCubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/post/cubit/post_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/post/postScreen.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInBloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/signIn.dart';
import 'package:traffic_solution_dsc/services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traffic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostCubit(),
        child: HomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
