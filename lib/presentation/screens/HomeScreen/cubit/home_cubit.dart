import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:traffic_solution_dsc/constraints/status.dart';
import 'package:traffic_solution_dsc/models/placeNear/placeNear.dart';
import 'dart:convert' as convert;

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial(data: HomeStateData()));
  void getCameraPostion(LatLng latLng) {
    try {
      emit(HomeState.loading(
          data: state.data!.copyWith(status: StatusType.loading)));
      CameraPosition _camera = CameraPosition(
        target: latLng,
        zoom: 13,
      );
      emit(HomeState.getLocationSelectedCamera(
          data: state.data!.copyWith(locationSelectedCamera: _camera)));
    } catch (e) {
      emit(HomeState.error(data: state.data!.copyWith(error: e.toString())));
    }
  }

  Future<HomeStateData> getPlaceNear(LatLng latLng) async {
    try {
      emit(HomeState.loading(
          data: state.data!.copyWith(status: StatusType.loading)));
      final headers = {
        'X-RapidAPI-Host': 'trueway-places.p.rapidapi.com',
        'X-RapidAPI-Key': 'b1a1bfce34msh0287fa31caec574p100443jsnd9d5e7fc04c2',
      };

      final params = {
        'location': '${latLng.latitude},${latLng.longitude}',
        //'type': 'cafe',
        //'radius': '180',
        'language': 'en',
      };

      final url =
          Uri.parse('https://trueway-places.p.rapidapi.com/FindPlacesNearby')
              .replace(queryParameters: params);

      final res = await http.get(url, headers: headers);
      final status = res.statusCode;
      if (status != 200) throw Exception('http.get error: statusCode= $status');
      PlaceNear place = PlaceNear.fromJson(convert.jsonDecode(res.body));

      print(res.body);

      emit(HomeState.getLocationSelected(
          data: state.data!
              .copyWith(locationSelected: place, status: StatusType.loaded)));
      print(state.data!.status.toString());
      return state.data!;
    } catch (e) {
      return HomeStateData();
    }
  }
}
