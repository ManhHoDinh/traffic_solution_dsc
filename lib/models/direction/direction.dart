import 'package:freezed_annotation/freezed_annotation.dart';
import 'route.dart';
part 'direction.freezed.dart';
part 'direction.g.dart';

@freezed
class Direction with _$Direction {
  const factory Direction({
    @JsonKey(name: 'route') Route? route,
  }) = _Direction;

  factory Direction.fromJson(Map<String, Object?> json) =>
      _$DirectionFromJson(json);
}
