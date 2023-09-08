import 'package:freezed_annotation/freezed_annotation.dart';
part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class Point with _$Point {
  const factory Point({
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'lng') double? lng,
  }) = _Point;

  factory Point.fromJson(Map<String, Object?> json) =>
      _$PointFromJson(json);
}
