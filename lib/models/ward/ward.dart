import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'ward.freezed.dart';
part 'ward.g.dart';

@freezed
class Ward with _$Ward {
  const factory Ward({
    required String id,
    String? districId,
    String? Name,
    }) = _Ward;

  factory Ward.fromJson(Map<String, Object?> json) => _$WardFromJson(json);
}
