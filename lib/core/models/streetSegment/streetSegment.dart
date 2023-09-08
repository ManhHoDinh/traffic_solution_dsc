import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'streetSegment.freezed.dart';
part 'streetSegment.g.dart';

@freezed
class StreetSegment with _$StreetSegment {
  const factory StreetSegment({
    @JsonKey(name: 'segmentStreetId') String? id,
    @JsonKey(name: 'startLongitude') double? StartLng,
    @JsonKey(name: 'startLatitude') double? StartLat,
    @JsonKey(name: 'endLongitude') double? EndLng,
    @JsonKey(name: 'endLatitude') double? EndLat,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'streetId') String? streetId,
  }) = _StreetSegment;

  factory StreetSegment.fromJson(Map<String, Object?> json) =>
      _$StreetSegmentFromJson(json);
}
