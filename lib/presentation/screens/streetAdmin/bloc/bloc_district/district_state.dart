part of 'district_bloc.dart';

@immutable
sealed class DistrictState {}

class DistrictInitialState extends DistrictState {}

class DistrictLoadingState extends DistrictState {}

class DistrictLoadedState extends DistrictState {
  List<District>? districts;
  DistrictLoadedState({required this.districts});
}

class DistrictErrorState extends DistrictState {
  String? message;
  DistrictErrorState({required this.message});
}
