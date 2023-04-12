import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartsScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartsScreen({Key? key}) : super(key: key);

  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {

  int count = 11;
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  // Initialized a global variable for ChartSeriesController class
  ChartSeriesController? _chartSeriesController;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
          //Initialize the chart widget
          SizedBox(
            height: 50,
          ),
          Container(
              height: 550,
              width: 550,
              child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Half yearly sales analysis'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'Sales',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true))
              ]),
              ),
              Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              //Initialize the spark charts widget
              child: SfSparkLineChart.custom(
                //Enable the trackball
                trackball: SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
            ),
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //         child: ButtonTheme(
          //             minWidth: 40.0,
          //             height: 30.0,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 _chartSeriesController?.animate();
          //               },
          //               child: Text('Animate line series',
          //                   textScaleFactor: 1,
          //                   style: TextStyle(color: Colors.white)),
          //             ))),
          //     Container(
          //         child: ButtonTheme(
          //             minWidth: 40.0,
          //             height: 30.0,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 addChartData();
          //               },
          //               child: Text('Add data point',
          //                   textScaleFactor: 1,
          //                   style: TextStyle(color: Colors.white)),
          //             ))),
          //   ],
          // )
        ]);
  }

}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}