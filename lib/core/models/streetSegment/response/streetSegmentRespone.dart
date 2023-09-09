import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
part 'streetSegmentRespone.freezed.dart';
part 'streetSegmentRespone.g.dart';

@freezed
class StreetSegmentResponse with _$StreetSegmentResponse {
  const factory StreetSegmentResponse({
    @JsonKey(name: 'size') int? size,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'totalPages') int? totalPages,
    @JsonKey(name: 'items') List<StreetSegment>? streetSegments,
  }) = _StreetSegmentResponse;

  factory StreetSegmentResponse.fromJson(Map<String, Object?> json) => _$StreetSegmentResponseFromJson(json);
}
