import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'geometry.dart';
part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
class Features with _$Features {
  const factory Features({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'place_type') List<String>? placeType,
    @JsonKey(name: 'relevance') double? relevance,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'place_name') String? placeName,
    @JsonKey(name: 'bbox') List<double>? bbox,
    @JsonKey(name: 'center') List<double>? center,
    @JsonKey(name: 'geometry') Geometry? geometry,
   }) = _Features;

  factory Features.fromJson(Map<String, Object?> json) =>
      _$FeaturesFromJson(json);
}
