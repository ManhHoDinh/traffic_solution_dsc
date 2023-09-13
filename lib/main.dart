
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/core/services/firebase_options.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/splash/splash_screen.dart';
import 'package:traffic_solution_dsc/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     title: 'Traffic',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: BlocProvider(
    //       create: (context) => HomeCubit(),
    //       child: HomeScreen(),
    //     ),
    //     debugShowCheckedModeBanner: false,
    //   );
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traffic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: HomeScreen.provider(),
    );
  }
}
