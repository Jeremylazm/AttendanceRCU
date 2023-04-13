import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartsScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartsScreen({Key? key}) : super(key: key);

  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  late List<ChartData> chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    chartData = [
      ChartData('03/04/2023', 3, 2),
      ChartData('04/04/2023', 1.5, 4),
      ChartData('05/04/2023', 3, 2),
      ChartData('06/04/2023', 2, 3),
      ChartData('07/04/2023', 0, 5),
      ChartData('10/04/2023', 3, 3),
      ChartData('11/04/2023', 3, 2),
      ChartData('12/04/2023', 4, 1),
      ChartData('13/04/2023', 3, 2),
      ChartData('14/04/2023', 1, 4.5),
      ChartData('17/04/2023', 3, 2),
      ChartData('18/04/2023', 1.5, 4),
      ChartData('19/04/2023', 3, 2),
      ChartData('20/04/2023', 2, 3),
      ChartData('21/04/2023', 0, 5),
      ChartData('24/04/2023', 3, 2),
      ChartData('25/04/2023', 3, 2),
      ChartData('26/04/2023', 4, 1),
      ChartData('27/04/2023', 3, 2),
      ChartData('28/04/2023', 1, 4.5),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 1000,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                legend: Legend(isVisible: true),
                tooltipBehavior: _tooltipBehavior,
                series: <ChartSeries>[
          StackedBarSeries<ChartData, String>(
              name: "Horas Activas",
              color: AppColors.mainBlueColor,
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y1),
          StackedBarSeries<ChartData, String>(
              name: "Horas Inactivas",
              color: AppColors.secondaryColor,
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y2),
          
        ])));
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2);
  final String x;
  final double y1;
  final double y2;
}
