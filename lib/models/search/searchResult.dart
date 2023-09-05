import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'searchResult.freezed.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    String? name,
    String? address,
    LatLng? location,
  }) = _SearchResult;
}
