// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      id: json['id'] as String,
      businessId: json['businessId'] as String?,
      name: json['name'] as String?,
      LocationX: json['LocationX'] as String?,
      LocationY: json['LocationY'] as int?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'name': instance.name,
      'LocationX': instance.LocationX,
      'LocationY': instance.LocationY,
      'status': instance.status,
    };
