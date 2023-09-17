import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  const factory Area({
    @JsonKey(name: 'area_id') String? id,
    @JsonKey(name: 'area_name') String? name,
   @JsonKey(name: 'ward_id') String? ward,
  }) = _Area;

  factory Area.fromJson(Map<String, Object?> json) => _$AreaFromJson(json);
}
