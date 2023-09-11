import 'package:freezed_annotation/freezed_annotation.dart';
part 'bounds.freezed.dart';
part 'bounds.g.dart';

@freezed
class Bounds with _$Bounds {
  const factory Bounds({
    @JsonKey(name: 'south') double? south,
    @JsonKey(name: 'west') double? west,
    @JsonKey(name: 'north') double? north,
    @JsonKey(name: 'east') double? east,
  }) = _Bounds;

  factory Bounds.fromJson(Map<String, Object?> json) => _$BoundsFromJson(json);
}
