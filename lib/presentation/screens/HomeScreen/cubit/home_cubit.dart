import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());
  void getCameraPostion(LatLng latLng) {
    try {
      emit(HomeState.loading());
      CameraPosition _camera = CameraPosition(
        target: latLng,
        zoom: 13,
      );
      emit(HomeState.loaded(_camera));
      print("Update");
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
