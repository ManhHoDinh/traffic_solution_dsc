import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'results.dart';
part 'true_map_search.freezed.dart';
part 'true_map_search.g.dart';

@freezed
class TrueMapSearch with _$TrueMapSearch {
  const factory TrueMapSearch({
    @JsonKey(name: 'results') List<Results>? results,
  }) = _TrueMapSearch;

  factory TrueMapSearch.fromJson(Map<String, Object?> json) =>
      _$TrueMapSearchFromJson(json);
}
