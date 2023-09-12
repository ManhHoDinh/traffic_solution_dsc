import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_resources.dart';

class ManagementStreetScreen extends StatefulWidget {
  const ManagementStreetScreen({super.key});

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
              Center(child: Text('Linh Trung', style: TextStyle(fontSize: 22))),
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
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return ModalBottom();
            },
          );
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
              Image.asset(AssetHelper.CAMERA,
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

class ModalBottom extends StatefulWidget {
  const ModalBottom({super.key});

  @override
  State<ModalBottom> createState() => _ModalBottomState();
}

class _ModalBottomState extends State<ModalBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: const [
                LocationTextField(title: 'From:'),
                SizedBox(height: 20),
                Divider(color: Colors.grey),
                SizedBox(height: 20),
                LocationTextField(title: 'To:'),
                SizedBox(height: 72),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 148, 226, 58),
              child: Icon(Icons.check, size: 36, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LocationTextField extends StatelessWidget {
  const LocationTextField({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Longitude',
                fillColor: Colors.black,
              ),
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Latitude',
                fillColor: Colors.black,
              ),
              style: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
