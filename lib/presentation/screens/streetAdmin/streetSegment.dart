import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/subScreens/addStreetSegment.dart';

class StreetSegmentScreen extends StatefulWidget {
  const StreetSegmentScreen({super.key, required this.street});
  final Street street;
  @override
  State<StreetSegmentScreen> createState() => _StreetSegmentScreenState();
}

class _StreetSegmentScreenState extends State<StreetSegmentScreen> {
  List<Store> stores = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Camera', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            children: [
              Center(
                  child: Text(widget.street.name ?? '',
                      style: TextStyle(fontSize: 22))),
              SizedBox(height: 30),
              // search bar
              SizedBox(height: 20),
              StreamBuilder<List<Store>>(
                  stream: FireBaseDataBase.readStores(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) stores = snapshot.data!;
                    return Container();
                  }),

              Expanded(
                child: StreamBuilder<List<StreetSegment>>(
                    stream: FireBaseDataBase.readStreetSegmentByStreetId(
                        widget.street.id ?? ''),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child:
                              Text('Something went wrong! ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        List<StreetSegment> streetSegments = snapshot.data!;
                        return ListView.builder(
                          itemBuilder: (context, i) => ItemContainer(
                            index: i,
                            streetSegment: streetSegments[i],
                            stores: stores,
                            street: widget.street,
                          ),
                          itemCount: streetSegments.length,
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }),
              ),

              // ItemContainer(
              //   title: 'Camera 01',
              //   subTitle: 'Ly Truc Coffee',
              // ),
              // ItemContainer(
              //   title: 'Camera 02',
              //   subTitle: 'Amos Coffee',
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 36),
        onPressed: () {
          // showModalBottomSheet(
          //   shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          //   isScrollControlled: true,
          //   context: context,
          //   builder: (BuildContext context) {
          //     return ModalBottom();
          //   },
          // );
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => AddStreetSegment(
                    street: widget.street,
                  )));
        },
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.streetSegment,
    required this.index,
    required this.stores,
    required this.street,
  });
  final int index;
  final StreetSegment streetSegment;
  final Street street;
  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    Store store = stores.where((e) => e.id == streetSegment.storeId).first;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        // margin: EdgeInsets.only(bottom: 20),
        height: 76,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          // padding: const EdgeInsets.only(horizontal: 20, vertical: 10),
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
          child: Row(
            children: [
              // Icon(Icons.notifications_outlined, size: 24),
              Image.asset(AssetHelper.ICON_CAMERA,
                  color: Colors.black, width: 20, height: 20),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Camera $index", style: TextStyle(fontSize: 16)),
                    Text("${store.name}", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'edit') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => AddStreetSegment(
                              street: street,
                              store: store,
                              streetSegment: streetSegment,
                            )));
                  } else if (value == 'delete') {
                    print('Delete');
                  }
                },
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem<String>(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem<String>(
                    value: 'delete',
                    child: Text('Delete'),
                  ),
                ],
                child: SizedBox(
                  width: 24,
                  height: 30,
                  child: Icon(Icons.more_vert),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
