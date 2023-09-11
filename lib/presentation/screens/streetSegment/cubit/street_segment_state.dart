part of 'street_segment_cubit.dart';

@freezed
class StreetSegmentStateData with _$StreetSegmentStateData {
  const factory StreetSegmentStateData({
    @Default(StatusType.init) StatusType? status,
    @Default([]) List<StreetSegment> streetSegments,
    @Default('') String? error,
    }) = _HomeStateData;
}


@freezed
class StreetSegmentState
 with _$StreetSegmentState {
  const factory StreetSegmentState.initial({StreetSegmentStateData?data}) = _Initial;
  const factory StreetSegmentState.loading({StreetSegmentStateData?data}) = _Loading;
  const factory StreetSegmentState.getStreetSegments({StreetSegmentStateData?data}) = _Loaded;
  const factory StreetSegmentState.error({StreetSegmentStateData?data}) = _Error;
}

