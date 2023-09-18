import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/screens/HomeScreen/cubit/home_cubit.dart';
import 'package:traffic_solution_dsc/presentation/screens/storeAdmin/add_store.dart';

class ManagementStoreScreen extends StatefulWidget {
  const ManagementStoreScreen({
    super.key,
    required this.business,
  });
  final Business business;

  @override
  State<ManagementStoreScreen> createState() => _ManagementStoreScreenState();
}

class _ManagementStoreScreenState extends State<ManagementStoreScreen> {
  List<StreetSegment> streetSegments = [];
  String? searchValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Business', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            children: [
              Center(
                  child: Text(widget.business.name ?? '',
                      style: TextStyle(fontSize: 22))),
              SizedBox(height: 30),
              // search bar
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.search, size: 30, color: Colors.black),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchValue = value;
                          });
                        },
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search your location ...',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              StreamBuilder<List<StreetSegment>>(
                  stream: FireBaseDataBase.readStreetSegment(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) streetSegments = snapshot.data!;
                    return Container();
                  }),
              Expanded(
                child: StreamBuilder<List<Store>>(
                    stream: FireBaseDataBase.readStoreWithBusinessID(
                        widget.business.id!),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child:
                              Text('Something went wrong! ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        List<Store> stores = filterStore(snapshot.data!);
                        return ListView.builder(
                          itemBuilder: (context, i) => ItemContainer(
                            business: widget.business,
                            store: stores[i],
                            streetSegments: streetSegments,
                          ),
                          itemCount: stores.length,
                        );
                      } else {
                        return Expanded(
                            child: Center(child: CircularProgressIndicator()));
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 36),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (_) => HomeCubit(),
                    child: AddStore(
                      business: widget.business,
                    ),
                  )));
          // showModalBottomSheet(
          //   shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          //   isScrollControlled: true,
          //   context: context,
          //   builder: (BuildContext context) {
          //     return ModalBottom();
          //   },
          // );
        },
      ),
    );
  }

  List<Store> filterStore(List<Store> source) {
    List<Store> result = source;
    if (searchValue != null) {
      result = result
          .where(
              (e) => e.name!.toLowerCase().contains(searchValue!.toLowerCase()))
          .toList();
    }
    return result;
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.store,
    required this.business,
    required this.streetSegments,
  });

  final Store store;
  final Business business;
  final List<StreetSegment> streetSegments;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        // margin: EdgeInsets.only(bottom: 20),
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
              Image.asset(AssetHelper.ICON_STORE,
                  color: Colors.black, width: 20, height: 20),
              SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(store.name ?? '', style: TextStyle(fontSize: 16)),
                    Text(store.address ?? '', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: (store.status ?? true)
                          ? Colors.lightGreenAccent
                          : Colors.redAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'edit') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => BlocProvider(
                              create: (_) => HomeCubit(),
                              child: AddStore(
                                business: business,
                                store: store,
                              ),
                            )));
                  } else if (value == 'delete') {
                    _showDeleteConfirmationDialog(context);
                  } else if (value == 'status') {
                    bool status = !(store.status ?? true);

                    final storeDoc = FirebaseFirestore.instance
                        .collection('stores')
                        .doc(store.id);
                    Store updateStore = Store(
                        address: store.address,
                        id: store.id,
                        name: store.name,
                        latitude: store.latitude,
                        longitude: store.longitude,
                        businessId: store.businessId,
                        status: status);
                    storeDoc.set(updateStore.toJson());
                  }
                },
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem<String>(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem<String>(
                    value: 'status',
                    child: Text((store.status ?? true) ? 'Disable' : 'Enable'),
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

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext _context) {
        return AlertDialog(
          title: Text("Confirm Deletion"),
          content: Text("Are you sure you want to delete this store?"),
          actions: [
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(_context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () async {
                final docRoomKind = await FirebaseFirestore.instance
                    .collection('stores')
                    .doc(store.id);
                Navigator.pop(_context);
                print(streetSegments);
                List<StreetSegment> streetWithStoreId = streetSegments
                    .where((element) => element.storeId == store.id)
                    .toList();
                if (streetWithStoreId.isEmpty) {
                  await docRoomKind.delete();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Delete Success!!!'),
                    backgroundColor: Colors.green,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "This Store has linked to a camera, don't delete!!!!"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
            ),
          ],
        );
      },
    );
  }
}
