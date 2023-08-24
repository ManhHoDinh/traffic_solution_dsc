import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'coordinates') List<double>? coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, Object?> json) =>
      _$GeometryFromJson(json);
}
