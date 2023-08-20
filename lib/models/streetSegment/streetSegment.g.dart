// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streetSegment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreetSegment _$$_StreetSegmentFromJson(Map<String, dynamic> json) =>
    _$_StreetSegment(
      id: json['id'] as String,
      streetId: json['streetId'] as String?,
      StartLocationX: json['StartLocationX'] as String?,
      StartLocationY: json['StartLocationY'] as String?,
      EndLocationX: json['EndLocationX'] as String?,
      EndLocationY: json['EndLocationY'] as String?,
      Status: json['Status'] as String?,
    );

Map<String, dynamic> _$$_StreetSegmentToJson(_$_StreetSegment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streetId': instance.streetId,
      'StartLocationX': instance.StartLocationX,
      'StartLocationY': instance.StartLocationY,
      'EndLocationX': instance.EndLocationX,
      'EndLocationY': instance.EndLocationY,
      'Status': instance.Status,
    };
