import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traffic_solution_dsc/models/search/mapbox/feature.dart';
import 'package:traffic_solution_dsc/models/search/mapbox/map_box_search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:traffic_solution_dsc/models/search/searchResult.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.initial());
  void search(String text) async {
    try {
      emit(SearchState.loading());
      final params = {
        'access_token':
            'pk.eyJ1IjoibWFuaGhvZGluaCIsImEiOiJjbGxuaWpyZTMwMHVtM2VuMTdnc29mZWR1In0.xbj1J-Vq2UqbLSVCL0fe9Q',
        'language': 'vi',
        'country': 'VN',
        'fuzzyMatch': 'true',
        'autocomplete': 'true',
        'routing': 'true',
      };
      final url = Uri.parse(
              'https://api.mapbox.com/geocoding/v5/mapbox.places/${text}.json')
          .replace(queryParameters: params);

      final res = await http.get(url);
      final status = res.statusCode;
      if (status == 200) {
        MapBoxSearch response =
            MapBoxSearch.fromJson(convert.jsonDecode(res.body));
        print(response.attribution);
        if (response.features == null || response.features!.isEmpty)
          emit(SearchState.error("Null"));
        //emit(SearchState.loaded(response.features));
      } else {
        emit(SearchState.error(res.statusCode.toString()));
      }
    } catch (e) {
      emit(SearchState.error(e.toString()));
    }
    // print(response.features!.first.center);
  }
}
