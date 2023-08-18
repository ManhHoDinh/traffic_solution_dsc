import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState { Lost, Gained, Init }

class InternetCubit extends Cubit<InternetState> {
  Connectivity connectivityResult = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetCubit() : super(InternetState.Init) {
    connectivitySubscription =
        connectivityResult.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        emit(InternetState.Gained);
      } else
        emit(InternetState.Lost);
    });
  }
  @override
  Future<void> close() {
    // TODO: implement close
    connectivitySubscription?.cancel();
    return super.close();
  }
}
