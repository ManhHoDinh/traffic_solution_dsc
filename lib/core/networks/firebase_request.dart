import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traffic_solution_dsc/core/models/business/business.dart';
import 'package:traffic_solution_dsc/core/models/report/report.dart';
import 'package:traffic_solution_dsc/core/models/store/store.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';

class FireBaseDataBase {
  static Stream<List<StreetSegment>> readStreetSegment() =>
      FirebaseFirestore.instance.collection('streetSegment').snapshots().map(
          (event) =>
              event.docs.map((e) => StreetSegment.fromJson(e.data())).toList());
  static Stream<List<Report>> readReportBySegmentId(String segmentId) =>
      FirebaseFirestore.instance
          .collection('Report')
          .where('SegmentId', isEqualTo: segmentId)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => Report.fromJson(e.data())).toList());
  static Stream<List<Business>> readBusinesses() => FirebaseFirestore.instance
      .collection('businesses')
      .snapshots()
      .map((event) => event.docs.map((e) {
            print(e.data());
            return Business.fromJson(e.data());
          }).toList());
  static Stream<List<Store>> readStoreWithBusinessID(String businessID) =>
      FirebaseFirestore.instance
          .collection('stores')
          .where('business_id', isEqualTo: businessID)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => Store.fromJson(e.data())).toList());
  static Stream<List<Store>> readStores() =>
      FirebaseFirestore.instance.collection('stores').snapshots().map(
          (event) =>
              event.docs.map((e) => Store.fromJson(e.data())).toList());
}
