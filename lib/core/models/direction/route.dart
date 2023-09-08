import 'package:freezed_annotation/freezed_annotation.dart';
import 'bounds.dart';
import 'geometry.dart';
import 'legs.dart';
part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  const factory Route({
    @JsonKey(name: 'distance') int? distance,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'bounds') Bounds? bounds,
    @JsonKey(name: 'geometry') Geometry? geometry,
    @JsonKey(name: 'legs') List<Legs>? legs,
  }) = _Route;

  factory Route.fromJson(Map<String, Object?> json) => _$RouteFromJson(json);
}
