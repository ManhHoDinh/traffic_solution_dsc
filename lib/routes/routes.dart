import 'package:flutter/widgets.dart';

import 'package:traffic_solution_dsc/presentation/signIn/signIn.dart';
import 'package:traffic_solution_dsc/presentation/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
};
