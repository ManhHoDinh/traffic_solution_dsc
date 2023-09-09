// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streetSegment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreetSegment _$$_StreetSegmentFromJson(Map<String, dynamic> json) =>
    _$_StreetSegment(
      id: json['segmentStreetId'] as String?,
      StartLng: (json['startLongitude'] as num?)?.toDouble(),
      StartLat: (json['startLatitude'] as num?)?.toDouble(),
      EndLng: (json['endLongitude'] as num?)?.toDouble(),
      EndLat: (json['endLatitude'] as num?)?.toDouble(),
      status: json['status'] as int?,
      streetId: json['streetId'] as String?,
    );

Map<String, dynamic> _$$_StreetSegmentToJson(_$_StreetSegment instance) =>
    <String, dynamic>{
      'segmentStreetId': instance.id,
      'startLongitude': instance.StartLng,
      'startLatitude': instance.StartLat,
      'endLongitude': instance.EndLng,
      'endLatitude': instance.EndLat,
      'status': instance.status,
      'streetId': instance.streetId,
    };
