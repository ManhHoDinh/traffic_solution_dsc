import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/assets/app_resources.dart';

class MainStreetScreen extends StatefulWidget {
  const MainStreetScreen({super.key});

  @override
  State<MainStreetScreen> createState() => _MainStreetScreenState();
}

class _MainStreetScreenState extends State<MainStreetScreen> {
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
                child: Text('TP. Ho Chi Minh', style: TextStyle(fontSize: 22)),
              ),
              SizedBox(height: 30),
              Container(
                height: 76,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      // Icon(Icons.notifications_outlined, size: 24),
                      Image.asset(AppIcons.MAP,
                          color: Colors.black, width: 20, height: 20),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text('Thu Duc', style: TextStyle(fontSize: 16)),
                          Text('2 camera', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
