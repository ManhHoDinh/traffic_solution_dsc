import 'package:flutter/material.dart';

class MainStreetScreen extends StatefulWidget {
  const MainStreetScreen({super.key});

  @override
  State<MainStreetScreen> createState() => _MainStreetScreenState();
}

class _MainStreetScreenState extends State<MainStreetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Text('Hello'),
      ),
    );
  }
}
