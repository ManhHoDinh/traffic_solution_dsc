import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'areaStreet.freezed.dart';
part 'areaStreet.g.dart';

@freezed
class AreaStreet with _$AreaStreet {
  const factory AreaStreet({
    required int id,
    String? streetId,
  }) = _AreaStreet;

  factory AreaStreet.fromJson(Map<String, Object?> json) => _$AreaStreetFromJson(json);
}
