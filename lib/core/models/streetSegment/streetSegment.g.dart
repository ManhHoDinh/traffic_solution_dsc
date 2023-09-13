// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streetSegment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreetSegmentFromFirebase _$$_StreetSegmentFromFirebaseFromJson(
        Map<String, dynamic> json) =>
    _$_StreetSegmentFromFirebase(
      id: json['SS_ID'] as String?,
      StartLng: json['SS_START_LONGITUDE'] as String?,
      StartLat: json['SS_START_LATITUDE'] as String?,
      EndLng: json['SS_END_LONGITUDE'] as String?,
      EndLat: json['SS_END_LATITUDE'] as String?,
      status: json['SS_STATUS'] as bool?,
      streetId: json['STREET_ID'] as String?,
    );

Map<String, dynamic> _$$_StreetSegmentFromFirebaseToJson(
        _$_StreetSegmentFromFirebase instance) =>
    <String, dynamic>{
      'SS_ID': instance.id,
      'SS_START_LONGITUDE': instance.StartLng,
      'SS_START_LATITUDE': instance.StartLat,
      'SS_END_LONGITUDE': instance.EndLng,
      'SS_END_LATITUDE': instance.EndLat,
      'SS_STATUS': instance.status,
      'STREET_ID': instance.streetId,
    };
