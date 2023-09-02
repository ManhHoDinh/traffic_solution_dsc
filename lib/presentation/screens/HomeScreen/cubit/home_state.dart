part of 'home_cubit.dart';


@freezed
class HomeStateData with _$HomeStateData {
  const factory HomeStateData({
    @Default(StatusType.init) StatusType? status,
    @Default('') String? error,
    @Default(CameraPosition(target: LatLng(0, 0))) CameraPosition? locationSelectedCamera,
    @Default(PlaceNear(results: [])) PlaceNear? locationSelected,
    }) = _HomeStateData;
}


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({HomeStateData?data}) = _Initial;
  const factory HomeState.loading({HomeStateData?data}) = _Loading;
  const factory HomeState.getLocationSelectedCamera({HomeStateData?data}) = _GetLocationSelectedCamera;
  const factory HomeState.error({HomeStateData?data}) = _Error;
  const factory HomeState.getLocationSelected({HomeStateData?data}) =
      _GetLocationSelected;
}
