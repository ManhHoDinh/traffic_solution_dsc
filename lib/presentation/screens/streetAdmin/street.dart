import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/area/area.dart';
import 'package:traffic_solution_dsc/core/models/area_street/areaStreet.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/streetSegment.dart';

class StreetScreen extends StatefulWidget {
  const StreetScreen({super.key, required this.area});
  final Area area;
  @override
  State<StreetScreen> createState() => _StreetScreenState();
}

class _StreetScreenState extends State<StreetScreen> {
  List<String> streetIds = [];
  List<StreetSegment> streetSegments = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text(widget.area.name ?? '',
                    style: TextStyle(fontSize: 22)),
              ),
              SizedBox(height: 30),
              StreamBuilder<List<StreetSegment>>(
                  stream: FireBaseDataBase.readStreetSegment(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      streetSegments = snapshot.data!;
                    }
                    return Container();
                  }),
              Expanded(
                child: StreamBuilder<List<AreaStreet>>(
                    stream:
                        FireBaseDataBase.readAreaStreet(widget.area.id ?? ''),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child:
                              Text('Something went wrong! ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        streetIds.clear();
                        snapshot.data!.forEach((element) {
                          streetIds.add(element.streetId ?? '');
                        });
                        print(streetIds);
                        return StreamBuilder<List<Street>>(
                            stream: FireBaseDataBase.readStreet(streetIds),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text(
                                      'Something went wrong! ${snapshot.error}'),
                                );
                              } else if (snapshot.hasData) {
                                List<Street> streets = snapshot
                                    .data!; //filterBusiness(snapshot.data!);
                                return ListView.builder(
                                  itemBuilder: (context, i) => ItemContainer(
                                    street: streets[i],
                                    streetSegment: streetSegments,
                                  ),
                                  itemCount: streets.length,
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            });
                      }
                      return Center(child: CircularProgressIndicator());
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
    required this.street,
    required this.streetSegment,
  });

  final Street street;
  final List<StreetSegment> streetSegment;
  int countStreetSegmentInStreet(
      {required List<StreetSegment> streetSegments, required Street street}) {
    return streetSegments
        .where((element) => element.streetId == street.id)
        .length;
  }

  @override
  Widget build(BuildContext context) {
    int quantityCamera = countStreetSegmentInStreet(
        streetSegments: streetSegment, street: street);

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => StreetSegmentScreen(
                street: street,
              ),
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
                    Text(street.name ?? '', style: TextStyle(fontSize: 16)),
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
