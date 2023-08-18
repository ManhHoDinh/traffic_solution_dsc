import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  const factory Area({
    required int id,
    String? name,
    String? wardId,
  }) = _Area;

  factory Area.fromJson(Map<String, Object?> json) => _$AreaFromJson(json);
}
