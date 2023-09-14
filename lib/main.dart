import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/services/firebase_options.dart';
import 'package:traffic_solution_dsc/presentation/screens/splash/splash_screen.dart';
import 'package:traffic_solution_dsc/presentation/screens/MainAdmin/mainadmin_screen.dart';
import 'package:traffic_solution_dsc/presentation/screens/homeAdmin/homeAdminScreen.dart';
import 'package:traffic_solution_dsc/routes/routes.dart';
import 'package:flow_builder/flow_builder.dart';
import './presentation/repositories/repositories.dart';
import './presentation/blocs/bloc_observer.dart';
import './presentation/blocs/app/app_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isFirstTimeUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isFirstTimeUser') ?? true;
}

bool firstTimeUser = true;
Future<void> main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      firstTimeUser = await isFirstTimeUser();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      final authRepository = AuthRepository();
      runApp(MyApp(authRepository: authRepository));
    },
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(key: key);

  final AuthRepository _authRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authRepository: _authRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstTimeUser
          ? SplashScreen()
          : FlowBuilder<AppStatus>(
              state: context.select((AppBloc bloc) => bloc.state.status),
              onGeneratePages: onGenerateAppViewPages,
            ),
    );
  }
}