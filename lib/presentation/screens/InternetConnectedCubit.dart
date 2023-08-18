import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/cubits/internetCubit.dart';

class TestCubit extends StatefulWidget {
  const TestCubit({super.key});

  @override
  State<TestCubit> createState() => _TestCubitState();
}

class _TestCubitState extends State<TestCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => InternetCubit(),
        child: Center(
            child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Cubit Internt Connected'),
                backgroundColor: Colors.green,
              ));
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Cubit Internt Not Connected'),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state == InternetState.Gained)
              return Text('Cubit Connected');
            else if (state == InternetState.Lost)
              return Text('Cubit Not Connected');
            else
              return Text('Cubit Loading...');
          },
        )),
      ),
    );
  }
}
