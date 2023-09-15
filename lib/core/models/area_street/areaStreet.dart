import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'areaStreet.freezed.dart';
part 'areaStreet.g.dart';

@freezed
class AreaStreet with _$AreaStreet {
  const factory AreaStreet({
      @JsonKey(name: 'area_id') String? areaId,
    @JsonKey(name: 'street_id') String? name,
  
  }) = _AreaStreet;

  factory AreaStreet.fromJson(Map<String, Object?> json) => _$AreaStreetFromJson(json);
}
