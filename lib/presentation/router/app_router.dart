import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/presentation/screens/homeAdmin/homeAdminScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/district.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeAdminScreen());
      case '/main_street':
        return MaterialPageRoute(builder: (_) => MainStreetScreen());
      default:
        return null;
    }
  }
}
