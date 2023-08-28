// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Steps _$$_StepsFromJson(Map<String, dynamic> json) => _$_Steps(
      distance: json['distance'] as int?,
      duration: json['duration'] as int?,
      startPointIndex: json['start_point_index'] as int?,
      startPoint: json['start_point'] == null
          ? null
          : Point.fromJson(json['start_point'] as Map<String, dynamic>),
      endPointIndex: json['end_point_index'] as int?,
      endPoint: json['end_point'] == null
          ? null
          : Point.fromJson(json['end_point'] as Map<String, dynamic>),
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$$_StepsToJson(_$_Steps instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'start_point_index': instance.startPointIndex,
      'start_point': instance.startPoint,
      'end_point_index': instance.endPointIndex,
      'end_point': instance.endPoint,
      'bounds': instance.bounds,
      'maneuver': instance.maneuver,
    };
