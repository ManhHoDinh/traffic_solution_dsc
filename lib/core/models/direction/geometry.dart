import 'package:freezed_annotation/freezed_annotation.dart';
part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    @JsonKey(name: 'coordinates') List<dynamic>? coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, Object?> json) =>
      _$GeometryFromJson(json);
}
