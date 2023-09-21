import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocationTextField extends StatelessWidget {
  LocationTextField(
      {super.key,
      required this.title,
      this.longitudeController,
      this.latitudeController,
      this.nameController,
      this.isAddress,
      this.isEnable,
      this.isName});

  final String title;
  TextEditingController? longitudeController = TextEditingController();
  TextEditingController? latitudeController = TextEditingController();
  TextEditingController? nameController = TextEditingController();
  bool? isName = false;
  bool? isAddress = false;
  bool? isEnable = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        isName == true || isAddress == true
            ? Expanded(
                child: SingleChildScrollView(
                  child: TextFormField(
                    controller: nameController,
                    maxLines: null, // Allows multiple lines of text
                    keyboardType: TextInputType.multiline,
                    enabled: isEnable,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          isName == true ? 'Store Name' : 'Store Address',
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            : Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          controller: longitudeController,
                          keyboardType: TextInputType.number,
                          enabled: isEnable,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Longitude',
                            fillColor: Colors.black,
                          ),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          controller: latitudeController,
                          keyboardType: TextInputType.number,
                          enabled: isEnable,
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
                ),
              ),
      ],
    );
  }
}
