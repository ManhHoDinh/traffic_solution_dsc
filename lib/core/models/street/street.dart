import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'street.freezed.dart';
part 'street.g.dart';

@freezed
class Street with _$Street {
  const factory Street({
    @JsonKey(name: 'street_id') String? id,
    @JsonKey(name: 'street_name') String? name,
    
  }) = _Street;

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);
}
