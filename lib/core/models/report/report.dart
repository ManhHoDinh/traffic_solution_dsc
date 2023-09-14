import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'report.freezed.dart';
part 'report.g.dart';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class ReportTableData {
  String timeOfDay;
  String trafficVolume;
  String ratio;
  String avgSpeed;
  ReportTableData(
      {required this.timeOfDay,
      required this.trafficVolume,
      required this.avgSpeed,
      required this.ratio});
}

@freezed
class Report with _$Report {
  const factory Report({
    @JsonKey(name: 'ReportId') String? reportId,
    @JsonKey(name: 'SegmentId') String? SegmentId,
    @JsonKey(name: 'StoreId') String? StoreId,
    @JsonKey(name: 'avgSpeed') double? avgSpeed,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'time') @TimestampSerializer() required DateTime time,
  }) = _Report;

  factory Report.fromJson(Map<String, Object?> json) => _$ReportFromJson(json);
}
