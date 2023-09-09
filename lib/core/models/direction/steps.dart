import 'package:freezed_annotation/freezed_annotation.dart';
import 'point.dart';
import 'bounds.dart';
part 'steps.freezed.dart';
part 'steps.g.dart';

@freezed
class Steps with _$Steps {
  const factory Steps({
    @JsonKey(name: 'distance') int? distance,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'start_point_index') int? startPointIndex,
    @JsonKey(name: 'start_point') Point? startPoint,
    @JsonKey(name: 'end_point_index') int? endPointIndex,
    @JsonKey(name: 'end_point') Point? endPoint,
    @JsonKey(name: 'bounds') Bounds? bounds,
    @JsonKey(name: 'maneuver') String? maneuver,
  }) = _Steps;

  factory Steps.fromJson(Map<String, Object?> json) => _$StepsFromJson(json);
}
