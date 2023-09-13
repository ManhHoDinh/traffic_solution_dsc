// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      reportId: json['ReportId'] as String?,
      SegmentId: json['SegmentId'] as String?,
      StoreId: json['StoreId'] as String?,
      avgSpeed: (json['avgSpeed'] as num?)?.toDouble(),
      count: json['count'] as int?,
      time: const TimestampSerializer().fromJson(json['time']),
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'ReportId': instance.reportId,
      'SegmentId': instance.SegmentId,
      'StoreId': instance.StoreId,
      'avgSpeed': instance.avgSpeed,
      'count': instance.count,
      'time': const TimestampSerializer().toJson(instance.time),
    };
