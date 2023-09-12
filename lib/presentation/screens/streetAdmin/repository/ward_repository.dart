import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../model/ward.dart';

abstract class WardRepo {
  Future<List<Ward>> fetchDetails();
}

class WardRepository extends WardRepo {
  @override
  Future<List<Ward>> fetchDetails() async {
    String jsonString = await rootBundle.loadString('assets/smartcity.json');
    final jsonData = jsonDecode(jsonString);
    List<Ward> wards = [];
    for (var item in jsonData['WARD']) {
      wards.add(Ward.fromJson(item));
    }
    return wards;
  }
}
