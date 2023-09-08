import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/searchScreen/cubit/search_cubit.dart';
import 'package:traffic_solution_dsc/core/services/location_service.dart';

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
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.grey)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search here",
                      icon: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      border: InputBorder.none),
                  onChanged: (val) {
                    context.read<SearchCubit>().search(val);
                  },
                ),
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
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pop(location[index]);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(300),
                                      ),
                                      color: Colors.grey[300]),
                                  child: Icon(Icons.location_on_outlined)),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    location![index].text.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 290,
                                    child: Text(
                                      location[index].placeName.toString(),
                                      overflow: TextOverflow.clip,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
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
