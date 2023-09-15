// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streetSegment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreetSegment _$$_StreetSegmentFromJson(Map<String, dynamic> json) =>
    _$_StreetSegment(
      id: json['ss_id'] as String?,
      StartLng: (json['ss_start_longitude'] as num?)?.toDouble(),
      StartLat: (json['ss_start_latitude'] as num?)?.toDouble(),
      EndLng: (json['ss_end_longitude'] as num?)?.toDouble(),
      EndLat: (json['ss_end_latitude'] as num?)?.toDouble(),
      status: json['ss_status'] as bool?,
      streetId: json['store_id'] as String?,
    );

Map<String, dynamic> _$$_StreetSegmentToJson(_$_StreetSegment instance) =>
    <String, dynamic>{
      'ss_id': instance.id,
      'ss_start_longitude': instance.StartLng,
      'ss_start_latitude': instance.StartLat,
      'ss_end_longitude': instance.EndLng,
      'ss_end_latitude': instance.EndLat,
      'ss_status': instance.status,
      'store_id': instance.streetId,
    };
