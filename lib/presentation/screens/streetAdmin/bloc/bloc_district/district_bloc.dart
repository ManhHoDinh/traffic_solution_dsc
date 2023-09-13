import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/model/district.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/repository/district_repository.dart';

part 'district_event.dart';
part 'district_state.dart';

class DistrictBloc extends Bloc<DistrictEvent, DistrictState> {
  final DistrictRepository repo;
  late List<District> data;
  DistrictBloc(this.repo) : super(DistrictInitialState()) {
    on<FetchDataEvent>((event, emit) async {
      data = await repo.fetchDetails();
      emit.call(DistrictLoadingState());

      try {
        emit.call(DistrictLoadedState(districts: data));
      } catch (e) {
        emit.call(DistrictErrorState(message: e.toString()));
      }
    });
  }
}
