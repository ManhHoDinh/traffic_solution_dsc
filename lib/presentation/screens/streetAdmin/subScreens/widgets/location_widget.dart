import 'package:flutter/material.dart';

class LocationTextField extends StatelessWidget {
  const LocationTextField(
      {super.key,
      required this.title,
      required this.longitudeController,
      required this.latitudeController});

  final String title;
  final TextEditingController longitudeController;
  final TextEditingController latitudeController;

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
            height: 40,
            child: TextField(
              controller: longitudeController,
              enabled: false,
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
            height: 40,
            child: TextField(
              controller: latitudeController,
              enabled: false,
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
