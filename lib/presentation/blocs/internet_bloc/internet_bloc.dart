import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:traffic_solution_dsc/presentation/blocs/internet_bloc/internet_event.dart';
import 'package:traffic_solution_dsc/presentation/blocs/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity connectivityResult = Connectivity();
  StreamSubscription? connectivitySubscription;
  InternetBloc() : super(InternetInitialState()) {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));
    connectivitySubscription =
        connectivityResult.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile)
        add(InternetGainedEvent());
      else
        add(InternetLostEvent());
    });
  }
  @override
  Future<void> close() {
    // TODO: implement close
    connectivitySubscription?.cancel();
    return super.close();
  }
}
