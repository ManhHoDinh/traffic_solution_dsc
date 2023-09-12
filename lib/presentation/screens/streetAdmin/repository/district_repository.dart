import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:traffic_solution_dsc/presentation/screens/streetAdmin/model/district.dart';

abstract class DistrictRepo {
  Future<List<District>> fetchDetails();
}

class DistrictRepository extends DistrictRepo {
  @override
  Future<List<District>> fetchDetails() async {
    String jsonString = await rootBundle.loadString('assets/smartcity.json');
    final jsonData = jsonDecode(jsonString);
    List<District> districts = [];
    for (var item in jsonData['DISTRICT']) {
      districts.add(District.fromJson(item));
    }
    return districts;
  }
}
