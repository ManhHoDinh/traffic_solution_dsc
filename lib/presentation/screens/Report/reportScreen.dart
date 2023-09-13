import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution_dsc/core/helper/app_colors.dart';
import 'package:traffic_solution_dsc/core/models/placeNear/placeNear.dart';
import 'package:traffic_solution_dsc/core/models/report/report.dart';
import 'package:traffic_solution_dsc/core/networks/firebase_request.dart';

class ReportScreen extends StatefulWidget {
  ReportScreen({super.key, this.place, this.segmentId});
  PlaceNear? place;
  String? segmentId;
  @override
  State<StatefulWidget> createState() => ReportScreenState();
}

class ReportScreenState extends State<ReportScreen> {
  late bool isShowingMainData;
  List<TableRow> tableRows = [];
  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
    getDefaultTableRow();
    print(widget.segmentId);
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
          height: 50,
          color: Color(0xffB9B9B9).withOpacity(0.5),
          child: Center(
            child: Text(
              'Traffic volume of daily',
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              color: Color(0xffB9B9B9).withOpacity(0.5)),
          height: 50,
          child: Center(
            child: Text(
              'Avg Speed(Km/h)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
    ]));
  }

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
                "${widget.place!.results!.first.name}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              widget.segmentId != null
                  ? Column(
                      children: [
                        Text("Street ${widget.place!.results!.first.types}"),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )
                  : SizedBox(),
              Text("Location: ${widget.place!.results!.first.address}"),
              widget.segmentId != null
                  ? StreamBuilder<List<Report>>(
                      stream: FireBaseDataBase.readReportBySegmentId(
                          widget.segmentId!),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child:
                                Text('Something went wrong! ${snapshot.error}'),
                          );
                        } else if (snapshot.hasData) {
                          generateData(snapshot.data!);
                          return Table(
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              border: TableBorder.all(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              columnWidths: {
                                0: FixedColumnWidth(90),
                                1: FixedColumnWidth(90),
                                2: FixedColumnWidth(90),
                                3: FixedColumnWidth(90),
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
                              children: tableRows);
                        } else {
                          return Container();
                        }
                      })
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  void generateData(List<Report> report) {
    getDefaultTableRow();
    List<ReportTableData> reportTableData = getReportTableRowData(report);
    reportTableData.forEach((e) {

      tableRows.add(TableRow(children: [
        Container(
            height: 50,
            child: Center(
              child: Text(
                e.timeOfDay,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            height: 50,
            color: Color(0xffB9B9B9).withOpacity(0.5),
            child: Center(
              child: Text(
                e.trafficVolume,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            height: 50,
            color: Color(0xffB9B9B9).withOpacity(0.5),
            child: Center(
              child: Text(
                '${e.ratio}(%)',
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
                e.avgSpeed,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ]));
    });
  }

  List<ReportTableData> getReportTableRowData(List<Report> report) {
    List<ReportTableData> result = [];
    //su ly gio
    result.add(ReportTableData(
        timeOfDay: '0 - 4',
        trafficVolume: 'getTrafficValume(report)',
        ratio: '23',
        avgSpeed: '12.5'));
    
    result.add(ReportTableData(
        timeOfDay: '4 - 8',
        trafficVolume: '34',
        ratio: '23',
        avgSpeed: '12.5'));

    result.add(ReportTableData(
        timeOfDay: '8 - 12',
        trafficVolume: '34',
        ratio: '23',
        avgSpeed: '12.5'));
    
    result.add(ReportTableData(
        timeOfDay: '12 - 16',
        trafficVolume: '34',
        ratio: '23',
        avgSpeed: '12.5'));
    
    result.add(ReportTableData(
        timeOfDay: '16 - 20',
        trafficVolume: '34',
        ratio: '23',
        avgSpeed: '12.5'));
    
    result.add(ReportTableData(
        timeOfDay: '20 - 24',
        trafficVolume: '34',
        ratio: '23',
        avgSpeed: '12.5'));
    
    return result;
  }

}
class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LineChart(
        isShowingMainData ? sampleData1 : sampleData2,
        duration: const Duration(milliseconds: 250),
      ),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
        lineChartBarData1_3,
      ];

  LineTouchData get lineTouchData2 => const LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_1,
        lineChartBarData2_2,
        lineChartBarData2_3,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '4m';
        break;
      case 5:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('SEPT', style: style);
        break;
      case 7:
        text = const Text('OCT', style: style);
        break;
      case 12:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom:
              BorderSide(color: AppColors.primary.withOpacity(0.2), width: 4),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: AppColors.contentColorGreen,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: AppColors.contentColorPink,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: AppColors.contentColorPink.withOpacity(0),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        color: AppColors.contentColorCyan,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 2.8),
          FlSpot(3, 1.9),
          FlSpot(6, 3),
          FlSpot(10, 1.3),
          FlSpot(13, 2.5),
        ],
      );

  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: AppColors.contentColorGreen.withOpacity(0.5),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: AppColors.contentColorPink.withOpacity(0.5),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: AppColors.contentColorPink.withOpacity(0.2),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: AppColors.contentColorCyan.withOpacity(0.5),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
      );
}
