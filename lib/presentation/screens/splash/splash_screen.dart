import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/constraints/size_config.dart';

import './components/body.dart'; // Assuming you have a Body widget defined

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";
  static Page page() => MaterialPage<void>(child: SplashScreen());
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SizeConfig().init(context);
    // You can add any initialization logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
