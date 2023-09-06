import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/models/search/mapbox/feature.dart';
import 'package:traffic_solution_dsc/models/search/mapbox/map_box_search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:traffic_solution_dsc/models/search/searchResult.dart';
import 'package:traffic_solution_dsc/models/search/trueMap/true_map_search.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.initial());
  void search(String text) async {
    try {
      emit(SearchState.loading());
      List<SearchResult> results = [];
      List<SearchResult> MapBoxResults = [];
      List<SearchResult> TrueWayResults = [];
      getMapBoxSearch(text).then((value) => MapBoxResults = value);
      getTrueWapSearch(text).then((value) => TrueWayResults = value);
      results = TrueWayResults;
      TrueWayResults.map((e) => {
            //if(e.name)
            results.add(e)
          });
      emit(SearchState.loaded(results));
    } catch (e) {
      emit(SearchState.error(e.toString()));
    }
    // print(response.features!.first.center);
  }

  Future<List<SearchResult>> getMapBoxSearch(String text) async {
    try {
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
        List<SearchResult> results = [];
        print(res.body);
        response.features!.map((e) {
          results.add(SearchResult(
              name: e.placeName,
              address: e.text,
              location: LatLng(e.center![1], e.center![0])));
        });
        return results;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<SearchResult>> getTrueWapSearch(String text) async {
    try {
      final headers = {
        'X-RapidAPI-Host': 'trueway-places.p.rapidapi.com',
        'X-RapidAPI-Key': 'b1a1bfce34msh0287fa31caec574p100443jsnd9d5e7fc04c2',
      };

      final params = {
        'text': text,
        'language': 'vi',
      };

      final url =
          Uri.parse('https://trueway-places.p.rapidapi.com/FindPlaceByText')
              .replace(queryParameters: params);

      final res = await http.get(url, headers: headers);
      final status = res.statusCode;
      if (status == 200) {
        TrueMapSearch response =
            TrueMapSearch.fromJson(convert.jsonDecode(res.body));
        List<SearchResult> results = [];

        response.results!.map((e) {
          results.add(SearchResult(
              name: e.name,
              address: e.address,
              location: LatLng(e.location!.lat!, e.location!.lng!)));
        });
        print(res.body);
        return results;
      } else {
        print("Error $status");
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
