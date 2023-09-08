// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Route _$$_RouteFromJson(Map<String, dynamic> json) => _$_Route(
      distance: json['distance'] as int?,
      duration: json['duration'] as int?,
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => Legs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'bounds': instance.bounds,
      'geometry': instance.geometry,
      'legs': instance.legs,
    };
