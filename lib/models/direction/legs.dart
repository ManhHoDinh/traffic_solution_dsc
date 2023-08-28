import 'package:freezed_annotation/freezed_annotation.dart';
import 'point.dart';
import 'bounds.dart';
import 'steps.dart';
part 'legs.freezed.dart';
part 'legs.g.dart';

@freezed
class Legs with _$Legs {
  const factory Legs({
    @JsonKey(name: 'distance') int? distance,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'start_point_index') int? startPointIndex,
    @JsonKey(name: 'start_point') Point? startPoint,
    @JsonKey(name: 'end_point_index') int? endPointIndex,
    @JsonKey(name: 'end_point') Point? endPoint,
    @JsonKey(name: 'bounds') Bounds? bounds,
    @JsonKey(name: 'steps') List<Steps>? steps,
  }) = _Legs;

  factory Legs.fromJson(Map<String, Object?> json) => _$LegsFromJson(json);
}
