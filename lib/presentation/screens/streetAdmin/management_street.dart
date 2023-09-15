import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/subScreens/addStreetSegment.dart';

class ManagementStreetScreen extends StatefulWidget {
  const ManagementStreetScreen({super.key, required this.wardTitle});
  final String wardTitle;
  @override
  State<ManagementStreetScreen> createState() => _ManagementStreetScreenState();
}

class _ManagementStreetScreenState extends State<ManagementStreetScreen> {
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
                  child:
                      Text(widget.wardTitle, style: TextStyle(fontSize: 22))),
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.search, size: 30, color: Colors.black),
                    ),
                    Expanded(
                      child: TextField(
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
              SizedBox(height: 20),
              Row(
                children: const [
                  Text('4',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text(' results',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
              SizedBox(height: 20),
              ItemContainer(
                title: 'Camera 01',
                subTitle: 'Ly Truc Coffee',
              ),
              ItemContainer(
                title: 'Camera 02',
                subTitle: 'Amos Coffee',
              ),
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
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddStreetSegment()));
        },
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
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
                    Text(title, style: TextStyle(fontSize: 16)),
                    Text(subTitle, style: TextStyle(fontSize: 12)),
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
                    print('Edit');
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
