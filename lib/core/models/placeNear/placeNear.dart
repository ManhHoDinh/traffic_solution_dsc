import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'results.dart';
part 'placeNear.freezed.dart';
part 'placeNear.g.dart';

@freezed
class PlaceNear with _$PlaceNear {
  const factory PlaceNear({
    @JsonKey(name: 'results') List<Results>? results,
  }) = _PlaceNear;

  factory PlaceNear.fromJson(Map<String, Object?> json) =>
      _$PlaceNearFromJson(json);
}
