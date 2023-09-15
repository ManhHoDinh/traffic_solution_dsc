import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'streetSegment.freezed.dart';
part 'streetSegment.g.dart';

@freezed
class StreetSegment with _$StreetSegment {
  const factory StreetSegment({
    @JsonKey(name: 'ss_id') String? id,
    @JsonKey(name: 'ss_start_longitude') double? StartLng,
    @JsonKey(name: 'ss_start_latitude') double? StartLat,
    @JsonKey(name: 'ss_end_longitude') double? EndLng,
    @JsonKey(name: 'ss_end_latitude') double? EndLat,
    @JsonKey(name: 'ss_status') bool? status,
    @JsonKey(name: 'store_id') String? streetId,
  }) = _StreetSegment;

  factory StreetSegment.fromJson(Map<String, dynamic?> json) =>
      _$StreetSegmentFromJson(json);
}
