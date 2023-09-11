// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phone_number'] as String?,
      website: json['website'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      distance: json['distance'] as int?,
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'website': instance.website,
      'location': instance.location,
      'types': instance.types,
      'distance': instance.distance,
    };
