import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:traffic_solution_dsc/core/models/search/mapbox/feature.dart';
part 'map_box_search.freezed.dart';
part 'map_box_search.g.dart';

@freezed
class MapBoxSearch with _$MapBoxSearch {
  const factory MapBoxSearch({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'query') List<String>? query,
    @JsonKey(name: 'features') List<Features>? features,
    @JsonKey(name: 'attribution') String? attribution,
  }) = _MapBoxSearch;

  factory MapBoxSearch.fromJson(Map<String, Object?> json) =>
      _$MapBoxSearchFromJson(json);
}
