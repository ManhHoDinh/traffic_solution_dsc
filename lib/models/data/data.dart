import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    String? streetSegmentId,
    String? StoreId,
    String? timeStamp,
    int? count,
    double? avgSpeed,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
