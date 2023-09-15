// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      businessId: json['business_id'] as String?,
      id: json['store_id'] as String?,
      latitude: (json['store_latitude'] as num?)?.toDouble(),
      longitude: (json['store_longitude'] as num?)?.toDouble(),
      name: json['store_name'] as String?,
      status: json['store_status'] as bool?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'business_id': instance.businessId,
      'store_id': instance.id,
      'store_latitude': instance.latitude,
      'store_longitude': instance.longitude,
      'store_name': instance.name,
      'store_status': instance.status,
      'address': instance.address,
    };
