import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/blocs/internet_bloc/internet_bloc.dart';
import 'package:traffic_solution_dsc/presentation/blocs/internet_bloc/internet_event.dart';
import 'package:traffic_solution_dsc/presentation/blocs/internet_bloc/internet_state.dart';

class TestBloc extends StatefulWidget {
  const TestBloc({super.key});

  @override
  State<TestBloc> createState() => _TestBlocState();
}

class _TestBlocState extends State<TestBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => InternetBloc(),
      child: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          listener: (context, state) {
            if (state is InternetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Internt Connected'),
                backgroundColor: Colors.green,
              ));
            } else if (state is InternetLostState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Internt Not Connected'),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state is InternetGainedState)
              return Text('Connected');
            else if (state is InternetLostState)
              return Text('Not Connected');
            else
              return Text('Loading....');
          },
        ),
      ),
    ));
  }
}
