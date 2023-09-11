// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Direction _$$_DirectionFromJson(Map<String, dynamic> json) => _$_Direction(
      route: json['route'] == null
          ? null
          : Route.fromJson(json['route'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DirectionToJson(_$_Direction instance) =>
    <String, dynamic>{
      'route': instance.route,
    };
