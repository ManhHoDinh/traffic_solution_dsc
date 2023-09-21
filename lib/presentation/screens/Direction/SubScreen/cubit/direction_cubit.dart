import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:traffic_solution_dsc/core/models/direction/direction.dart';
import 'dart:convert' as convert;

part 'direction_state.dart';
part 'direction_cubit.freezed.dart';

class DirectionCubit extends Cubit<DirectionState> {
  DirectionCubit() : super(DirectionState.initial());

  void getDirection(
      sourceText, LatLng source, destinationText, LatLng destination) async {
    try {
      print('loading');
      emit(DirectionState.loading());
      Direction res = await geDirectionAPI(
          sourceText, source, destinationText, destination);
      print('Done');
      Set<Polyline> _polylines = {};
      List<LatLng> latLen = [];
      res.route!.geometry!.coordinates!.forEach((e) {
        latLen.add(LatLng(e[0], e[1]));
      });
      print("Time Route");
      print(res.route!.distance);
      print(res.route!.duration);
      _polylines.add(Polyline(
        polylineId: PolylineId('1'),
        points: latLen,
        color: Colors.green,
      ));
      Duration dateTime = Duration(seconds: res.route!.duration!);

      emit(DirectionState.loaded(sourceText, source, destinationText,
          destination, dateTime,res.route!.distance!.toDouble(), _polylines));
    } catch (error) {
      print(error);
      emit(DirectionState.error(error.toString()));
    }
  }

  Future<Direction> geDirectionAPI(
      sourceText, LatLng source, destinationText, LatLng destination) async {
    final headers = {
      'X-RapidAPI-Host': 'trueway-directions2.p.rapidapi.com',
      'X-RapidAPI-Key': 'b1a1bfce34msh0287fa31caec574p100443jsnd9d5e7fc04c2',
    };

    final params = {
      'origin': '${source.latitude},${source.longitude}',
      'destination': '${destination.latitude},${destination.longitude}',
    };

    final url =
        Uri.parse('https://trueway-directions2.p.rapidapi.com/FindDrivingPath')
            .replace(queryParameters: params);

    final res = await http.get(url, headers: headers);
    final status = res.statusCode;
    if (status != 200) throw Exception('http.get error: statusCode= $status');
    var json = convert.jsonDecode(res.body);
    Direction result = Direction.fromJson(json);

    return result;
  }
}
