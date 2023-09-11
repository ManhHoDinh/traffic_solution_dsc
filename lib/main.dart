import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:traffic_solution_dsc/presentation/router/app_router.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/InternetConnectedBloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/InternetConnectedCubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/homeAdmin/homeAdminScreen.dart';
import 'package:traffic_solution_dsc/presentation/screens/post/cubit/post_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/post/postScreen.dart';
import 'package:traffic_solution_dsc/presentation/signIn/bloc/SignInBloc.dart';
import 'package:traffic_solution_dsc/presentation/signIn/signIn.dart';
import 'package:traffic_solution_dsc/services/firebase_options.dart';
=======
import 'package:traffic_solution_dsc/presentation/screens/Authentication/login_screen.dart';
import 'package:traffic_solution_dsc/core/services/firebase_options.dart';
import 'package:traffic_solution_dsc/routes/routes.dart';
import 'package:flow_builder/flow_builder.dart';
import './presentation/repositories/repositories.dart';
import './presentation/blocs/bloc_observer.dart';
import './presentation/blocs/app/app_bloc.dart';
>>>>>>> origin/main

Future<void> main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      final authRepository = AuthRepository();
      runApp(MyApp(authRepository: authRepository));
    },
    blocObserver: AppBlocObserver(),
  );
}

<<<<<<< HEAD
class MyApp extends StatefulWidget {
  const MyApp({super.key});
=======
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

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);
>>>>>>> origin/main

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'Traffic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostCubit(),
        // child: HomeScreen(),
        child: HomeAdminScreen(),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _appRouter.onGenerateRoute,
=======
      debugShowCheckedModeBanner: false,
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
      // home: LoginScreen(),
>>>>>>> origin/main
    );
  }
}
