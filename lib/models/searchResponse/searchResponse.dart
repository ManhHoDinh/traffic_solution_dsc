import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'feature.dart';
part 'searchResponse.freezed.dart';
part 'searchResponse.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'query') List<String>? query,
    @JsonKey(name: 'features') List<Features>? features,
    @JsonKey(name: 'attribution') String? attribution,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}
