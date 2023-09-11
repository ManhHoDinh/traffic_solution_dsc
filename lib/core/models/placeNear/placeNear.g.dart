// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placeNear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceNear _$$_PlaceNearFromJson(Map<String, dynamic> json) => _$_PlaceNear(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceNearToJson(_$_PlaceNear instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
