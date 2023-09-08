// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Features _$$_FeaturesFromJson(Map<String, dynamic> json) => _$_Features(
      id: json['id'] as String?,
      type: json['type'] as String?,
      placeType: (json['place_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      relevance: (json['relevance'] as num?)?.toDouble(),
      text: json['text'] as String?,
      placeName: json['place_name'] as String?,
      bbox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      center: (json['center'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeaturesToJson(_$_Features instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'place_type': instance.placeType,
      'relevance': instance.relevance,
      'text': instance.text,
      'place_name': instance.placeName,
      'bbox': instance.bbox,
      'center': instance.center,
      'geometry': instance.geometry,
    };
