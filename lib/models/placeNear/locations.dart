import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'locations.freezed.dart';
part 'locations.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'lng') double? lng,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
