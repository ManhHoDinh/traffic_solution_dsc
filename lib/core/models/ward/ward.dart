import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'ward.freezed.dart';
part 'ward.g.dart';

@freezed
class Ward with _$Ward {
  const factory Ward({
       @JsonKey(name: 'district_id') String? districtId,
    @JsonKey(name: 'ward_id') String? id,
 @JsonKey(name: 'ward_name') String? name,
 
    }) = _Ward;

  factory Ward.fromJson(Map<String, Object?> json) => _$WardFromJson(json);
}
