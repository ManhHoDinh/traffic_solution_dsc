// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_box_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapBoxSearch _$$_MapBoxSearchFromJson(Map<String, dynamic> json) =>
    _$_MapBoxSearch(
      type: json['type'] as String?,
      query:
          (json['query'] as List<dynamic>?)?.map((e) => e as String).toList(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => Features.fromJson(e as Map<String, dynamic>))
          .toList(),
      attribution: json['attribution'] as String?,
    );

Map<String, dynamic> _$$_MapBoxSearchToJson(_$_MapBoxSearch instance) =>
    <String, dynamic>{
      'type': instance.type,
      'query': instance.query,
      'features': instance.features,
      'attribution': instance.attribution,
    };
