import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
 
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
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
