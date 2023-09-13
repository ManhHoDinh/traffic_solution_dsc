import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:traffic_solution_dsc/core/models/report/report.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/services/firebase_options.dart';

class FireBaseDataBase {
  static Stream<List<StreetSegment>> readStreetSegment() =>
      FirebaseFirestore.instance.collection('streetSegment').snapshots().map(
          (event) => event.docs
              .map((e) =>
                  StreetSegment(StreetSegmentFromFirebase.fromJson(e.data())))
              .toList());
  static Stream<List<Report>> readReportBySegmentId(String segmentId) =>
      FirebaseFirestore.instance
          .collection('Report')
          .where('SegmentId', isEqualTo: segmentId)
          .snapshots()
          .map((event) =>
              event.docs.map((e) => Report.fromJson(e.data())).toList());
}
