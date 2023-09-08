// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streetSegmentRespone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreetSegmentResponse _$$_StreetSegmentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StreetSegmentResponse(
      size: json['size'] as int?,
      total: json['total'] as int?,
      page: json['page'] as int?,
      totalPages: json['totalPages'] as int?,
      streetSegments: (json['items'] as List<dynamic>?)
          ?.map((e) => StreetSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StreetSegmentResponseToJson(
        _$_StreetSegmentResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'total': instance.total,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'items': instance.streetSegments,
    };
