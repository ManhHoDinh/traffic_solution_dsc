import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
      @JsonKey(name: 'business_id') String? businessId,
    @JsonKey(name: 'store_id') String? id,
    @JsonKey(name: 'store_latitude') double? latitude,
  @JsonKey(name: 'store_longitude') double? longitude,
    @JsonKey(name: 'store_name') String? name,
    @JsonKey(name: 'store_status') bool? status,
  @JsonKey(name: 'address') String? address,
  
  }) = _Store;

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);
}
