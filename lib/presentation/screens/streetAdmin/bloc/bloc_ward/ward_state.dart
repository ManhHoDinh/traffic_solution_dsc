part of 'ward_bloc.dart';

@immutable
sealed class WardState {}

class WardInitialState extends WardState {}

class WardLoadingState extends WardState {}

class WardLoadedState extends WardState {
  List<Ward>? wards;
  WardLoadedState({required this.wards});
}

class WardErrorState extends WardState {
  String? message;
  WardErrorState({required this.message});
}
