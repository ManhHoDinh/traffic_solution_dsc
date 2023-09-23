import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/area/area.dart';
import 'package:traffic_solution_dsc/core/models/area_street/areaStreet.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/models/ward/ward.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/street.dart';

class AreaScreen extends StatefulWidget {
  const AreaScreen({super.key, required this.ward});
  final Ward ward;
  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  List<Street> streets = [];
  List<AreaStreet> areaStreets = [];
  List<StreetSegment> streetSegments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Area', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            children: [
              Center(
                child: Text(widget.ward.name ?? '',
                    style: TextStyle(fontSize: 22)),
              ),
              SizedBox(height: 30),
              Expanded(
                child: StreamBuilder<List<AreaStreet>>(
                    stream: FireBaseDataBase.readAllAreaStreet(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        areaStreets = snapshot.data!;
                      }
                      return StreamBuilder<List<Street>>(
                          stream: FireBaseDataBase.readAllStreet(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              streets = snapshot.data!;
                            }
                            return StreamBuilder<List<StreetSegment>>(
                                stream: FireBaseDataBase.readStreetSegment(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    streetSegments = snapshot.data!;
                                  }
                                  return StreamBuilder<List<Area>>(
                                      stream: FireBaseDataBase.readArea(
                                          widget.ward.id!),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasError) {
                                          return Center(
                                            child: Text(
                                                'Something went wrong! ${snapshot.error}'),
                                          );
                                        } else if (snapshot.hasData) {
                                          List<Area> areas = snapshot
                                              .data!; //filterBusiness(snapshot.data!);
                                          return ListView.builder(
                                            itemBuilder: (context, i) =>
                                                ItemContainer(
                                              area: areas[i],
                                              streetSegments: streetSegments,
                                              streets: streets,
                                              areaStreets: areaStreets,
                                            ),
                                            itemCount: areas.length,
                                          );
                                        } else {
                                          return Expanded(
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator()));
                                        }
                                      });
                                });
                          });
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
    required this.area,
    required this.areaStreets,
    required this.streetSegments,
    required this.streets,
  });

  final Area area;
  final List<Street> streets;
  final List<AreaStreet> areaStreets;
  final List<StreetSegment> streetSegments;
  int countStreetSegmentInStreet(Street street) {
    return streetSegments
        .where((element) => element.streetId == street.id)
        .length;
  }

  int countStreetSegmentInArea() {
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

  @override
  Widget build(BuildContext context) {
    int quantityCamera = countStreetSegmentInArea();

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => StreetScreen(area: area),
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
                    Text(area.name ?? '', style: TextStyle(fontSize: 16)),
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
