// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'true_map_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrueMapSearch _$$_TrueMapSearchFromJson(Map<String, dynamic> json) =>
    _$_TrueMapSearch(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrueMapSearchToJson(_$_TrueMapSearch instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
