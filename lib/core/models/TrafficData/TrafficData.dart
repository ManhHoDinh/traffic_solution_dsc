import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'TrafficData.freezed.dart';
part 'TrafficData.g.dart';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class TrafficDataTableData {
  String timeOfDay;
  String moto;
  String car;
  String others;
  String ratio;
  String getTrafficVolume() {
    return (double.tryParse(car)! + double.tryParse(moto)! + double.tryParse(others)!)
        .toString();
  }

  TrafficDataTableData(
      {required this.timeOfDay,
      required this.moto,
      required this.car,
      required this.others,
      required this.ratio});
}

@freezed
class TrafficData with _$TrafficData {
  const factory TrafficData({
    @JsonKey(name: 'TF_ID') String? trafficDataId,
    @JsonKey(name: 'SS_ID') String? streetSegmentId,
    @JsonKey(name: 'TF_COUNT_MOTOBIKE') int? moto,
    @JsonKey(name: 'TF_COUNT_CAR') int? car,
    @JsonKey(name: 'TF_COUNT_OTHERS') int? other,
    @JsonKey(name: 'TF_TIME') @TimestampSerializer() required DateTime time,
  }) = _TrafficData;

  factory TrafficData.fromJson(Map<String, Object?> json) =>
      _$TrafficDataFromJson(json);
}
