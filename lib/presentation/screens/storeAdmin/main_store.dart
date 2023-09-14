import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';

import 'management_store.dart';

class MainStoreScreen extends StatefulWidget {
  const MainStoreScreen({super.key});

  @override
  State<MainStoreScreen> createState() => _MainStoreScreenState();
}

class _MainStoreScreenState extends State<MainStoreScreen> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Alls',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    SizedBox(
                      width: 26,
                      height: 26,
                      child: Image.asset(
                        AssetHelper.ICON_FILTER,
                        color: Colors.black,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // items
                ItemContainer(
                  title: 'Truc Coffee',
                  type: 'Coffee',
                  quantityStore: 3,
                ),
                ItemContainer(
                  title: 'Hello Coffee',
                  type: 'Coffee',
                  quantityStore: 1,
                ),
              ],
            )),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.title,
    required this.type,
    required this.quantityStore,
  });
  final String title;
  final int quantityStore;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ManagementStoreScreen(businessTitle: title),
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
                    Text(title, style: TextStyle(fontSize: 16)),
                    Text(type, style: TextStyle(fontSize: 12)),
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
