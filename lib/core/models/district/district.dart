import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'district.freezed.dart';
part 'district.g.dart';

@freezed
class District with _$District {
  const factory District({
    @JsonKey(name: 'district_id') String? id,
    @JsonKey(name: 'district_name') String? name,
    
  }) = _District;

  factory District.fromJson(Map<String, Object?> json) => _$DistrictFromJson(json);
}
