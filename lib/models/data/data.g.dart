// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String,
      streetSegmentId: json['streetSegmentId'] as String?,
      StoreId: json['StoreId'] as String?,
      timeStamp: json['timeStamp'] as String?,
      count: json['count'] as int?,
      avgSpeed: (json['avgSpeed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'streetSegmentId': instance.streetSegmentId,
      'StoreId': instance.StoreId,
      'timeStamp': instance.timeStamp,
      'count': instance.count,
      'avgSpeed': instance.avgSpeed,
    };
