import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:traffic_solution_dsc/core/helper/app_colors.dart';
import 'package:traffic_solution_dsc/core/models/TrafficData/TrafficData.dart';
import 'package:traffic_solution_dsc/core/models/placeNear/placeNear.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';
import 'package:traffic_solution_dsc/presentation/widgets/no_data_widget.dart';

class ReportScreen extends StatefulWidget {
  ReportScreen({super.key, this.place, this.segmentId});
  PlaceNear? place;
  String? segmentId;
  @override
  State<StatefulWidget> createState() => ReportScreenState();
}

class ReportScreenState extends State<ReportScreen> {
  List<TableRow> tableRows = [];
  @override
  void initState() {
    super.initState();

    selectedStartDate = DateTime(now.year, now.month, now.day, 0, 0);
    selectedEndDate = DateTime(now.year, now.month, now.day, 23, 59);
  }

  getDefaultTableRow() {
    tableRows.clear();
    tableRows.add(TableRow(children: [
      Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
              color: Color(0xffB9B9B9).withOpacity(0.5)),
          child: Center(
            child: Text(
              'Time of day',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      Container(
          padding: EdgeInsets.only(left: 10),
          height: 50,
          color: Color(0xffB9B9B9).withOpacity(0.5),
          child: Center(
            child: Text(
              'Traffic volume',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      Container(
          height: 50,
          color: Color(0xffB9B9B9).withOpacity(0.5),
          child: Center(
            child: Text(
              'Ratio(%)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      Container(
          color: Color(0xffB9B9B9).withOpacity(0.5),
          height: 50,
          child: Center(
            child: Text(
              'Cars Volume',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      Container(
          color: Color(0xffB9B9B9).withOpacity(0.5),
          height: 50,
          padding: EdgeInsets.only(left: 10),
          child: Center(
            child: Text(
              'MotoBikes Volume',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              color: Color(0xffB9B9B9).withOpacity(0.5)),
          height: 50,
          child: Center(
            child: Text(
              'Others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
    ]));
  }

  List<TrafficDataTableData> reportTableData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                toBeginningOfSentenceCase(
                        widget.place!.results!.first.name ?? '') ??
                    '',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(toBeginningOfSentenceCase(
                      widget.place!.results!.first.address) ??
                  ''),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: widget.segmentId != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Start Day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )),
                                  ElevatedButton(
                                    onPressed: () => _selectStartDate(context),
                                    child: Text("${selectedStartDate.toLocal()}"
                                        .split(' ')[0]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "End Day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      )),
                                  ElevatedButton(
                                    onPressed: () => _selectEndDate(context),
                                    child: Text("${selectedEndDate.toLocal()}"
                                        .split(' ')[0]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: StreamBuilder<List<TrafficData>>(
                                stream: FireBaseDataBase.readReportBySegmentId(
                                    widget.segmentId!),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Center(
                                      child: Text(
                                          'Something went wrong! ${snapshot.error}'),
                                    );
                                  } else if (snapshot.hasData) {
                                    List<TrafficData> report = snapshot.data!
                                        .where((element) =>
                                            element.time
                                                .isAfter(selectedStartDate) &&
                                            element.time
                                                .isBefore(selectedEndDate))
                                        .toList();
                                    generateData(report);
                                    return Column(
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Table(
                                              defaultVerticalAlignment:
                                                  TableCellVerticalAlignment
                                                      .middle,
                                              border: TableBorder.all(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                              columnWidths: {
                                                0: FixedColumnWidth(90),
                                                1: FixedColumnWidth(90),
                                                2: FixedColumnWidth(90),
                                                3: FixedColumnWidth(90),
                                                4: FixedColumnWidth(90),
                                                5: FixedColumnWidth(90),
                                                // 3: FixedColumnWidth(80),
                                                //
                                                // for (int i = 0;
                                                //     i < GuestKindModel.AllGuestKinds.length;
                                                //     i++)
                                                //   4 + i: FixedColumnWidth(120),
                                                // //
                                                // 4 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(100),
                                                // 5 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(80),
                                                // 6 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(140),
                                                // 7 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(200),
                                                // 8 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(200),
                                                // 9 + GuestKindModel.AllGuestKinds.length:
                                                //     FixedColumnWidth(100),
                                              },
                                              children: tableRows),
                                        ),

                                        Expanded(
                                            child: _BarChart(
                                          data: reportTableData,
                                        ))
                                        // Expanded(
                                        //     child: _BarChart(
                                        //   data: [],
                                        // ))
                                      ],
                                    );
                                  } else {
                                    return Container();
                                  }
                                }),
                          ),
                        ],
                      )
                    : Center(child: NoDataWidget()),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () async {
      //       final random = Random();
      //       final time = random.nextInt(20);

      //       final reportDoc =
      //           FirebaseFirestore.instance.collection('TrafficData').doc();
      //       TrafficData report = TrafficData(
      //           trafficDataId: reportDoc.id,
      //           time: getRandomDateTime(startHour: time, endHour: time + 4),
      //           streetSegmentId: widget.segmentId,
      //           car: getAutoTrafficVolume(),
      //           moto: getAutoTrafficVolume(),
      //           other: getAutoTrafficVolume());
      //       final json = report.toJson();
      //       await reportDoc.set(json);
      //     },
      //     child: Center(child: Text('Fake'))),
    );
  }

  int getAutoTrafficVolume() {
    final random = Random();
    final traffic =
        random.nextInt(200) + 20; // Generates a random number between 0 and 4

    return traffic;
  }

  DateTime now = DateTime.now();
  late DateTime selectedStartDate;
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate =
            DateTime(picked.year, picked.month, picked.day, 0, 0);
        if (selectedStartDate.isAfter(selectedEndDate)) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Start Day must is after End Day'),
            backgroundColor: Colors.red,
          ));
        }
      });
    }
  }

  late DateTime selectedEndDate;
  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate =
            DateTime(picked.year, picked.month, picked.day, 23, 59);
        if (selectedStartDate.isAfter(selectedEndDate)) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Start Day must is after End Day'),
            backgroundColor: Colors.red,
          ));
        }
      });
    }
  }

  DateTime getRandomDateTime(
      {int? startDay,
      int? startMonth,
      int? startHour,
      int? endDay,
      int? endMonth,
      int? endHour}) {
    final random = Random();
    final hour = random.nextInt(endHour! - startHour!) +
        startHour; // Generates a random number between 0 and 4
    final minute =
        random.nextInt(60); // Generates a random number between 0 and 59
    final second =
        random.nextInt(60); // Generates a random number between 0 and 59

    // Create a DateTime object for today with the random hour, minute, and second
    final now = DateTime.now();
    final randomDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      hour,
      minute,
      second,
    );

    return randomDateTime;
  }

  void generateData(List<TrafficData> report) {
    getDefaultTableRow();
    reportTableData = getReportTableRowData(report);
    for (int i = 0; i < reportTableData.length; i++) {
      TrafficDataTableData e = reportTableData[i];
      Color color =
          i % 2 == 0 ? Color(0xff66018CF1).withOpacity(0.4) : Color(0xffffff);
      tableRows.add(TableRow(children: [
        Container(
            height: 50,
            color: color,
            child: Center(
              child: Text(
                e.timeOfDay,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            height: 50,
            color: color,
            child: Center(
              child: Text(
                e.getTrafficVolume(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            height: 50,
            color: color,
            child: Center(
              child: Text(
                '${e.ratio}(%)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            decoration: BoxDecoration(color: color),
            height: 50,
            child: Center(
              child: Text(
                e.car,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            decoration: BoxDecoration(color: color),
            height: 50,
            child: Center(
              child: Text(
                e.moto,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            decoration: BoxDecoration(color: color),
            height: 50,
            child: Center(
              child: Text(
                e.others,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ]));
    }
  }

  List<TrafficDataTableData> getReportTableRowData(List<TrafficData> report) {
    List<TrafficDataTableData> result = [];
    double totalTraffic = double.tryParse(getTrafficVolume(report)) ?? 0;
    List<TrafficData> report1 = report
        .where((element) => element.time.hour >= 0 && element.time.hour < 4)
        .toList();
    result.add(TrafficDataTableData(
      timeOfDay: '0 - 4',
      moto: getMotoBikesVolume(report1),
      ratio: getRatio(report1, totalTraffic),
      car: getCarsVolume(report1),
      others: getOthersVolume(report1),
    ));

    List<TrafficData> report2 = report
        .where((element) => element.time.hour >= 4 && element.time.hour < 8)
        .toList();

    result.add(TrafficDataTableData(
      timeOfDay: '4 - 8',
      moto: getMotoBikesVolume(report2),
      ratio: getRatio(report2, totalTraffic),
      car: getCarsVolume(report2),
      others: getOthersVolume(report2),
    ));
    List<TrafficData> report3 = report
        .where((element) => element.time.hour >= 8 && element.time.hour < 12)
        .toList();

    result.add(TrafficDataTableData(
      timeOfDay: '8 - 12',
      moto: getMotoBikesVolume(report3),
      ratio: getRatio(report3, totalTraffic),
      car: getCarsVolume(report3),
      others: getOthersVolume(report3),
    ));
    List<TrafficData> report4 = report
        .where((element) => element.time.hour >= 12 && element.time.hour < 16)
        .toList();

    result.add(TrafficDataTableData(
      timeOfDay: '12 - 16',
      moto: getMotoBikesVolume(report4),
      ratio: getRatio(report4, totalTraffic),
      car: getCarsVolume(report4),
      others: getOthersVolume(report4),
    ));
    List<TrafficData> report5 = report
        .where((element) => element.time.hour >= 16 && element.time.hour < 20)
        .toList();

    result.add(TrafficDataTableData(
        timeOfDay: '16 - 20',
        moto: getMotoBikesVolume(report5),
        ratio: getRatio(report5, totalTraffic),
        car: getCarsVolume(report5),
        others: getOthersVolume(report5)));
    List<TrafficData> report6 = report
        .where((element) => element.time.hour >= 20 && element.time.hour <= 23)
        .toList();

    result.add(TrafficDataTableData(
        timeOfDay: '20 - 24',
        moto: getMotoBikesVolume(report6),
        ratio: getRatio(report6, totalTraffic),
        car: getCarsVolume(report6),
        others: getOthersVolume(report6)));

    return result;
  }

  String getRatio(List<TrafficData> report, double total) {
    if (total == 0) return '0';
    double volume = double.tryParse(getTrafficVolume(report)) ?? 0;
    return (volume * 100 / total).toStringAsFixed(2);
  }

  String getTrafficVolume(List<TrafficData> report) {
    double result = 0;
    report.forEach((element) {
      result += (element.car ?? 0) + (element.moto ?? 0) + (element.other ?? 0);
    });
    return result.toString();
  }

  String getCarsVolume(List<TrafficData> report) {
    double result = 0;
    report.forEach((element) {
      result += (element.car) ?? 0;
    });
    return result.toString();
  }

  String getMotoBikesVolume(List<TrafficData> report) {
    double result = 0;
    report.forEach((element) {
      result += (element.moto) ?? 0;
    });
    return result.toString();
  }

  String getOthersVolume(List<TrafficData> report) {
    double result = 0;
    report.forEach((element) {
      result += (element.other) ?? 0;
    });
    return result.toString();
  }
}

bool checkLargeData(List<TrafficDataTableData> data, double total) {
  bool result = false;
  for (int i = 0; i < data.length; i++) {
    if ((double.parse(data[i].car) +
                double.parse(data[i].moto) +
                double.parse(data[i].others)) *
            100 /
            total >=
        40) {
      result = true;
      break;
    }
  }
  return result;
}

class _BarChart extends StatelessWidget {
  _BarChart({required this.data});
  List<TrafficDataTableData> data;
  @override
  Widget build(BuildContext context) {
    double total = 0;
    data.forEach((element) {
      total += double.tryParse(element.getTrafficVolume()) ?? 0;
    });
    bool haveLargeData = checkLargeData(data, total);
    return data.isEmpty
        ? Container()
        : BarChart(
            BarChartData(
              barTouchData: barTouchData,
              titlesData: titlesData,
              borderData: borderData,
              barGroups: barGroups,
              gridData: const FlGridData(show: false),
              alignment: BarChartAlignment.spaceAround,
              maxY: haveLargeData ? total * 1 : total / 3.1,
            ),
          );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: AppColors.contentColorCyan,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );
  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: AppColors.contentColorBlue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0 - 4';
        break;
      case 1:
        text = '4 - 8';
        break;
      case 2:
        text = '8 - 12';
        break;
      case 3:
        text = '12 - 16';
        break;
      case 4:
        text = '16 - 20';
        break;
      case 5:
        text = '20 - 24';
        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  LinearGradient get _barsGradient => LinearGradient(
        colors: [
          AppColors.contentColorBlue,
          AppColors.contentColorCyan,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> get barGroups => data.isEmpty
      ? []
      : [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[0].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[1].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[2].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[3].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[4].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: double.tryParse(data[5].getTrafficVolume()) ?? 0,
                gradient: _barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          ),
        ];
}