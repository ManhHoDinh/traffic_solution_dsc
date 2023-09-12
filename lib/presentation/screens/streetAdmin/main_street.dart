import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/sub_street.dart';

import 'bloc/bloc_district/district_bloc.dart';
import 'repository/district_repository.dart';

class MainStreetScreen extends StatefulWidget {
  const MainStreetScreen({super.key});

  @override
  State<MainStreetScreen> createState() => _MainStreetScreenState();
}

class _MainStreetScreenState extends State<MainStreetScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DistrictBloc>(
      create: (_) => DistrictBloc(DistrictRepository())..add(FetchDataEvent()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Text('Street', style: TextStyle(fontSize: 22)),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            child: Column(
              children: [
                Center(
                  child:
                      Text('TP. Ho Chi Minh', style: TextStyle(fontSize: 22)),
                ),
                SizedBox(height: 30),

                BlocBuilder<DistrictBloc, DistrictState>(
                  builder: (context, state) {
                    print(state);
                    if (state is DistrictLoadingState) {
                      return CircularProgressIndicator();
                    } else if (state is DistrictLoadedState) {
                      return Column(
                        children: state.districts!.map((district) {
                          return ItemContainer(
                            title: district.districtName ?? '',
                            quantityCamera:
                                2, // Update this as per your requirement
                          );
                        }).toList(),
                      );
                    } else if (state is DistrictErrorState) {
                      return Text('Error: ${state.message}');
                    }
                    return Container(
                        width: 100, height: 100, color: Colors.orange);
                  },
                ),

                // ItemContainer(
                //   title: 'Thu Duc',
                //   quantityCamera: 2,
                // ),
                // ItemContainer(
                //   title: 'Quan 1',
                //   quantityCamera: 15,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.title,
    required this.quantityCamera,
  });
  final String title;
  final int quantityCamera;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SubStreetScreen(districtTitle: title),
            ),
          );
        },
        child: Container(
          // margin: EdgeInsets.only(bottom: 20),
          height: 76,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                // Icon(Icons.notifications_outlined, size: 24),
                Image.asset(AssetHelper.MAP,
                    color: Colors.black, width: 20, height: 20),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(title, style: TextStyle(fontSize: 16)),
                    Text('$quantityCamera camera',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
