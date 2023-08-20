import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'streetSegment.freezed.dart';
part 'streetSegment.g.dart';

@freezed
class StreetSegment with _$StreetSegment {
  const factory StreetSegment({
    required String id,
    String? streetId,
    String ? StartLocationX,
    String? StartLocationY,
    String ? EndLocationX,
    String? EndLocationY,
    String? Status,
  }) = _StreetSegment;

  factory StreetSegment.fromJson(Map<String, Object?> json) => _$StreetSegmentFromJson(json);
}
