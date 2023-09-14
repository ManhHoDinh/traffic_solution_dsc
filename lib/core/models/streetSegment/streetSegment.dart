import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'streetSegment.freezed.dart';
part 'streetSegment.g.dart';

class StreetSegment {
  String? id;
  double? StartLng;
  double? StartLat;
  double? EndLng;
  double? EndLat;
  bool? status;
  String? streetId;
  StreetSegment(StreetSegmentFromFirebase value) {
    print(value);
    this.id = value.id;
    this.StartLng = double.tryParse(value.StartLng.toString());
    this.StartLat = double.tryParse(value.StartLat.toString());
    this.EndLat = double.tryParse(value.EndLat.toString());
    this.EndLng = double.tryParse(value.EndLng.toString());
    this.status = value.status;
  }
}

@freezed
class StreetSegmentFromFirebase with _$StreetSegmentFromFirebase {
  const factory StreetSegmentFromFirebase({
    @JsonKey(name: 'SS_ID') String? id,
    @JsonKey(name: 'SS_START_LONGITUDE') String? StartLng,
    @JsonKey(name: 'SS_START_LATITUDE') String? StartLat,
    @JsonKey(name: 'SS_END_LONGITUDE') String? EndLng,
    @JsonKey(name: 'SS_END_LATITUDE') String? EndLat,
    @JsonKey(name: 'SS_STATUS') bool? status,
    @JsonKey(name: 'STREET_ID') String? streetId,
  }) = _StreetSegmentFromFirebase;

  factory StreetSegmentFromFirebase.fromJson(Map<String, dynamic?> json) =>
      _$StreetSegmentFromFirebaseFromJson(json);
}
