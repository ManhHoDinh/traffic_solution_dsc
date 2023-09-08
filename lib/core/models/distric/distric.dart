import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'distric.freezed.dart';
part 'distric.g.dart';

@freezed
class District with _$District {
  const factory District({
    required String id,
    String? Name,
  }) = _District;

  factory District.fromJson(Map<String, Object?> json) => _$DistrictFromJson(json);
}
