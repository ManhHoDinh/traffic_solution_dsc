import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'business.freezed.dart';
part 'business.g.dart';

@freezed
class Business with _$Business {
  const factory Business({
     @JsonKey(name: 'business_id') String? id,
    @JsonKey(name: 'business_name') String? name
    ,@JsonKey(name: 'business_type') String? type,
  }) = _Business;

  factory Business.fromJson(Map<String, Object?> json) => _$BusinessFromJson(json);
}
