import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'street.freezed.dart';
part 'street.g.dart';

@freezed
class Street with _$Street {
  const factory Street({
    required String id,
    String? streetName,
    String? areaId,
  }) = _Street;

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);
}
