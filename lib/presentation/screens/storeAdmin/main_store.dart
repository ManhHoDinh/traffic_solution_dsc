import 'dart:math';

import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/placeNear/placeNear.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';

import 'management_store.dart';

class MainStoreScreen extends StatefulWidget {
  const MainStoreScreen({super.key});

  @override
  State<MainStoreScreen> createState() => _MainStoreScreenState();
}

class _MainStoreScreenState extends State<MainStoreScreen> {
  List<Store> stores = [];
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
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            child: Column(
              children: [
                // header
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
                        child:
                            Icon(Icons.search, size: 30, color: Colors.black),
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
                            hintText: 'Search your business ...',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                // items
                Expanded(
                  child: StreamBuilder<List<Store>>(
                      stream: FireBaseDataBase.readStores(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          stores = snapshot.data!;
                        }
                        return StreamBuilder<List<Business>>(
                            stream: FireBaseDataBase.readBusinesses(),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text(
                                      'Something went wrong! ${snapshot.error}'),
                                );
                              } else if (snapshot.hasData) {
                                List<Business> business =
                                    filterBusiness(snapshot.data!);
                                return ListView.builder(
                                  itemBuilder: (context, i) => ItemContainer(
                                    business: business[i],
                                    stores: stores,
                                  ),
                                  itemCount: business.length,
                                );
                              } else {
                                return Expanded(
                                    child: Center(
                                        child: CircularProgressIndicator()));
                              }
                            });
                      }),
                ),
              ],
            )),
      ),
    );
  }

  String? searchValue;
  List<Business> filterBusiness(List<Business> source) {
    List<Business> result = source;
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
  const ItemContainer(
      {super.key, required this.business, required this.stores});
  final Business business;
  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    int quantityStore =
        stores.where((element) => element.businessId == business.id).length;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ManagementStoreScreen(business: business),
            ),
          );
        },
        child: Container(
          // margin: EdgeInsets.only(bottom: 20),
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                // Icon(Icons.notifications_outlined, size: 24),
                Image.asset(AssetHelper.ICON_STORE,
                    color: Colors.black, width: 20, height: 20),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(business.name ?? '', style: TextStyle(fontSize: 16)),
                    Text(business.type ?? '', style: TextStyle(fontSize: 12)),
                    Text(
                      quantityStore > 1
                          ? '$quantityStore stores'
                          : '$quantityStore store',
                      style: TextStyle(fontSize: 12),
                    ),
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
