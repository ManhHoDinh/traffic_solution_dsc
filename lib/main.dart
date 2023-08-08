import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/lineChartScreen.dart';

void main() {
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
      home: Scaffold(body: LineChartSample1()),
      debugShowCheckedModeBanner: false,
    );
  }
}
