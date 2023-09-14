import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/bloc/bloc_ward/ward_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/management_street.dart';

import 'repository/ward_repository.dart';

class SubStreetScreen extends StatefulWidget {
  const SubStreetScreen({super.key, required this.districtTitle});
  final String districtTitle;
  @override
  State<SubStreetScreen> createState() => _SubStreetScreenState();
}

class _SubStreetScreenState extends State<SubStreetScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WardBloc(WardRepository())..add(FetchDataEvent()),
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
                  child: Text(widget.districtTitle,
                      style: TextStyle(fontSize: 22)),
                ),
                SizedBox(height: 30),

                BlocBuilder<WardBloc, WardState>(
                  builder: (context, state) {
                    if (state is WardLoadingState) {
                      return CircularProgressIndicator();
                    } else if (state is WardLoadedState) {
                      return Column(
                        children: state.wards!.map((ward) {
                          return ItemContainer(
                            title: ward.wardName ?? '',
                            quantityCamera:
                                2, // Update this as per your requirement
                          );
                        }).toList(),
                      );
                    } else if (state is WardErrorState) {
                      return Text('Error: ${state.message}');
                    }
                    return Container(
                        width: 100, height: 100, color: Colors.orange);
                  },
                ),
                // ItemContainer(
                //   title: 'Linh Xuan',
                //   quantityCamera: 3,
                // ),
                // ItemContainer(
                //   title: 'Linh Trung',
                //   quantityCamera: 4,
                // )
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
              builder: (_) => ManagementStreetScreen(wardTitle: title),
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
                Image.asset(AssetHelper.ICON_MAP,
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
