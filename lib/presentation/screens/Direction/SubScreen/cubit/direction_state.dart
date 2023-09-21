part of 'direction_cubit.dart';

@freezed
class DirectionState with _$DirectionState {
  const factory DirectionState.initial() = _Initial;
  const factory DirectionState.loading() = _Loading;
  const factory DirectionState.loaded(
      String sourceText,
      LatLng source,
      String destinationText,
      LatLng destination,
      Duration duration,
      double distance,
      Set<Polyline> polyline) = _Loaded;
  const factory DirectionState.error(String error) = _Error;
}
