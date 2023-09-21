import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traffic_solution_dsc/core/models/TrafficData/TrafficData.dart';
import 'package:traffic_solution_dsc/core/models/area/area.dart';
import 'package:traffic_solution_dsc/core/models/area_street/areaStreet.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/district/district.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/street/street.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/models/ward/ward.dart';

class FireBaseDataBase {
  static Stream<List<StreetSegment>> readStreetSegment() =>
      FirebaseFirestore.instance
          .collection('streetsegments')
          .snapshots()
          .map((event) => event.docs.map((e) {
                return StreetSegment.fromJson(e.data());
              }).toList());
  static Stream<List<StreetSegment>> readStreetSegmentByStreetId(
          String streetId) =>
      FirebaseFirestore.instance
          .collection('streetsegments')
          .where('street_id', isEqualTo: streetId)
          .snapshots()
          .map((event) => event.docs.map((e) {
                return StreetSegment.fromJson(e.data());
              }).toList());

  static Stream<List<TrafficData>> readReportBySegmentId(String segmentId) =>
      FirebaseFirestore.instance
          .collection('TrafficData')
          .where('SS_ID', isEqualTo: segmentId)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => TrafficData.fromJson(e.data())).toList());
  static Stream<List<Business>> readBusinesses() => FirebaseFirestore.instance
      .collection('businesses')
      .snapshots()
      .map((event) => event.docs.map((e) {
            return Business.fromJson(e.data());
          }).toList());
  static Stream<List<District>> readDistrict() => FirebaseFirestore.instance
      .collection('districts')
      .snapshots()
      .map((event) => event.docs.map((e) {
            return District.fromJson(e.data());
          }).toList());

  static Stream<List<Store>> readStoreWithBusinessID(String businessID) =>
      FirebaseFirestore.instance
          .collection('stores')
          .where('business_id', isEqualTo: businessID)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => Store.fromJson(e.data())).toList());
  static Stream<List<Store>> readStores() => FirebaseFirestore.instance
      .collection('stores')
      .snapshots()
      .map((event) => event.docs.map((e) => Store.fromJson(e.data())).toList());
  static Stream<List<Ward>> readWard(String districtId) => FirebaseFirestore
      .instance
      .collection('wards')
      .where('district_id', isEqualTo: districtId)
      .snapshots()
      .map((event) => event.docs.map((e) => Ward.fromJson(e.data())).toList());
  static Stream<List<Ward>> readAllWard() => FirebaseFirestore.instance
      .collection('wards')
      .snapshots()
      .map((event) => event.docs.map((e) => Ward.fromJson(e.data())).toList());

  static Stream<List<Street>> readStreet(List<String> streetIds) {
    final CollectionReference collection =
        FirebaseFirestore.instance.collection('streets');

    return collection
        .where('street_id', whereIn: streetIds)
        .snapshots()
        .map((querySnapshot) {
      List<Street> streets = [];
      querySnapshot.docs.forEach((doc) {
        streets.add(Street(id: doc['street_id'], name: doc['street_name']));
      });

      return streets;
    });
  }

  static Stream<List<Street>> readAllStreet() {
    final CollectionReference collection =
        FirebaseFirestore.instance.collection('streets');

    return collection.snapshots().map((querySnapshot) {
      List<Street> streets = [];
      querySnapshot.docs.forEach((doc) {
        streets.add(Street(id: doc['street_id'], name: doc['street_name']));
      });

      return streets;
    });
  }

  static Stream<List<AreaStreet>> readAreaStreet(String areaId) =>
      FirebaseFirestore.instance
          .collection('area_street')
          .where('area_id', isEqualTo: areaId)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => AreaStreet.fromJson(e.data())).toList());
  static Stream<List<AreaStreet>> readAllAreaStreet() =>
      FirebaseFirestore.instance.collection('area_street').snapshots().map(
          (event) =>
              event.docs.map((e) => AreaStreet.fromJson(e.data())).toList());

  static Stream<List<Area>> readArea(String wardId) => FirebaseFirestore
      .instance
      .collection('areas')
      .where('ward_id', isEqualTo: wardId)
      .snapshots()
      .map((event) => event.docs.map((e) => Area.fromJson(e.data())).toList());
  static Stream<List<Area>> readAllArea() => FirebaseFirestore.instance
      .collection('areas')
      .snapshots()
      .map((event) => event.docs.map((e) => Area.fromJson(e.data())).toList());
}
