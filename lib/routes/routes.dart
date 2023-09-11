import 'package:flutter/widgets.dart';
import 'package:traffic_solution_dsc/presentation/screens/Authentication/cubit/login_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/Authentication/login_screen.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/MainAdmin/mainAdmin_screen.dart';

import 'package:traffic_solution_dsc/presentation/signIn/signIn.dart';
import 'package:traffic_solution_dsc/presentation/screens/splash/splash_screen.dart';

import 'package:traffic_solution_dsc/presentation/blocs/app/app_bloc.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
List<Page> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [MainAdminScreen.page()];
    case AppStatus.unauthenticated:
      return [SplashScreen.page()];
  }
}
