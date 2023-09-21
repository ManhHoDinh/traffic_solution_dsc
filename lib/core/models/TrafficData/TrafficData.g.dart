// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrafficData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrafficData _$$_TrafficDataFromJson(Map<String, dynamic> json) =>
    _$_TrafficData(
      trafficDataId: json['TF_ID'] as String?,
      streetSegmentId: json['SS_ID'] as String?,
      moto: json['TF_COUNT_MOTOBIKE'] as int?,
      car: json['TF_COUNT_CAR'] as int?,
      other: json['TF_COUNT_OTHERS'] as int?,
      time: const TimestampSerializer().fromJson(json['TF_TIME']),
    );

Map<String, dynamic> _$$_TrafficDataToJson(_$_TrafficData instance) =>
    <String, dynamic>{
      'TF_ID': instance.trafficDataId,
      'SS_ID': instance.streetSegmentId,
      'TF_COUNT_MOTOBIKE': instance.moto,
      'TF_COUNT_CAR': instance.car,
      'TF_COUNT_OTHERS': instance.other,
      'TF_TIME': const TimestampSerializer().toJson(instance.time),
    };
