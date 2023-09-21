import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/area/area.dart';
import 'package:traffic_solution_dsc/core/models/area_street/areaStreet.dart';
import 'package:traffic_solution_dsc/core/models/district/district.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/models/ward/ward.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/area.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/streetSegment.dart';

class WardScreen extends StatefulWidget {
  const WardScreen({super.key, required this.district});
  final District district;
  @override
  State<WardScreen> createState() => _WardScreenState();
}

class _WardScreenState extends State<WardScreen> {
  List<Street> streets = [];
  List<AreaStreet> areaStreets = [];
  List<StreetSegment> streetSegments = [];
  List<Area> areas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Ward', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            children: [
              Center(
                child: Text(widget.district.name ?? '',
                    style: TextStyle(fontSize: 22)),
              ),
              SizedBox(height: 30),
              StreamBuilder<List<Area>>(
                  stream: FireBaseDataBase.readAllArea(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      areas = snapshot.data!;
                    }
                    return Container();
                  }),

              StreamBuilder<List<AreaStreet>>(
                  stream: FireBaseDataBase.readAllAreaStreet(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      areaStreets = snapshot.data!;
                    }
                    return Container();
                  }),
              StreamBuilder<List<Street>>(
                  stream: FireBaseDataBase.readAllStreet(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      streets = snapshot.data!;
                    }
                    return Container();
                  }),
              StreamBuilder<List<StreetSegment>>(
                  stream: FireBaseDataBase.readStreetSegment(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      streetSegments = snapshot.data!;
                    }
                    return Container();
                  }),

              Expanded(
                child: StreamBuilder<List<Ward>>(
                    stream: FireBaseDataBase.readWard(widget.district.id ?? ''),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child:
                              Text('Something went wrong! ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        List<Ward> wards =
                            snapshot.data!; //filterBusiness(snapshot.data!);
                        return ListView.builder(
                          itemBuilder: (context, i) => ItemContainer(
                            ward: wards[i],
                            streetSegments: streetSegments,
                            areaStreets: areaStreets,
                            areas: areas,
                            streets: streets,
                          ),
                          itemCount: wards.length,
                        );
                      } else {
                        return Expanded(
                            child: Center(child: CircularProgressIndicator()));
                      }
                    }),
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
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.ward,
    required this.streets,
    required this.areaStreets,
    required this.areas,
    required this.streetSegments,
  });

  final Ward ward;
  final List<Street> streets;
  final List<AreaStreet> areaStreets;
  final List<StreetSegment> streetSegments;
  final List<Area> areas;
  int countStreetSegmentInStreet(Street street) {
    return streetSegments
        .where((element) => element.streetId == street.id)
        .length;
  }

  int countStreetSegmentInArea(Area area) {
    int result = 0;
    areaStreets
        .where((areaStreet) => area.id == areaStreet.areaId)
        .forEach((areaStreet) {
      streets
          .where((street) => areaStreet.streetId == street.id)
          .forEach((street) {
        result += countStreetSegmentInStreet(street);
      });
    });
    return result;
  }

  int countStreetSegmentInWard() {
    int result = 0;
    areas.where((element) => element.ward == ward.id).forEach((area) {
      result += countStreetSegmentInArea(area);
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    int quantityCamera = countStreetSegmentInWard();

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AreaScreen(ward: ward),
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
                    Text(ward.name ?? '', style: TextStyle(fontSize: 16)),
                    Text(
                        quantityCamera > 1
                            ? '$quantityCamera cameras'
                            : '$quantityCamera camera',
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
