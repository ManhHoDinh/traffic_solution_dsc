import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/services/location_service.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Expanded(child: TextField(
                onChanged: (val) {
                  context.read<SearchCubit>().search(val);
                },
              )),
            ],
          ),
          Expanded(child:
              BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
            return state.when(
                initial: () => Center(),
                loading: () => Center(child: CircularProgressIndicator()),
                loaded: (location) => ListView.builder(
                    itemCount: location?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        onPressed: () {
                          print(location[index]);
                          Navigator.of(context).pop(location[index]);
                        },
                        child: ListTile(
                          title: Text(
                              location![index].placeName!.toString() ?? ""),
                          subtitle: Text(location![index].center.toString()),
                        ),
                      );
                    }),
                error: (value) => Center(
                      child: Text(value),
                    ));
          }))
        ]),
      ),
    );
  }
}
