import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traffic_solution_dsc/core/constraints/status.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/repositories/data_repository.dart';
import 'package:traffic_solution_dsc/get_it.dart';

part 'street_segment_state.dart';
part 'street_segment_cubit.freezed.dart';

class StreetSegmentCubit extends Cubit<StreetSegmentState> {
  final _dataRepository = getIt<DataRepository>();

  StreetSegmentCubit()
      : super(StreetSegmentState.initial(data: StreetSegmentStateData()));
  Future<List<StreetSegment>> getStreetSegment() async {
    try {
      emit(StreetSegmentState.loading(
          data: state.data!.copyWith(status: StatusType.loading)));

      final response = await _dataRepository.getStreetSegments();
      emit(StreetSegmentState.getStreetSegments(
          data: state.data!.copyWith(
              status: StatusType.loaded,
              streetSegments: response.streetSegments ?? [])));
      return response.streetSegments ?? [];
    } catch (e) {
      emit(StreetSegmentState.error(
          data: state.data!
              .copyWith(status: StatusType.loaded, error: e.toString())));
      return [];
    }
  }
}
