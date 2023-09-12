import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/model/ward.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/repository/ward_repository.dart';

part 'ward_event.dart';
part 'ward_state.dart';

class WardBloc extends Bloc<WardEvent, WardState> {
  final WardRepository repo;
  late List<Ward> data;
  WardBloc(this.repo) : super(WardInitialState()) {
    on<FetchDataEvent>((event, emit) async {
      data = await repo.fetchDetails();
      emit.call(WardLoadingState());

      try {
        emit.call(WardLoadedState(wards: data));
      } catch (e) {
        emit.call(WardErrorState(message: e.toString()));
      }
    });
  }
}
