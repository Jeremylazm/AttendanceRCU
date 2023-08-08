import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartsScreen extends StatefulWidget {
  const ChartsScreen({Key? key}) : super(key: key);

  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  late List<ChartData> chartData;
  late List<ChartData2> chartData2;
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
    chartData2 = [
      ChartData2('José', 232, 408),
      ChartData2('Jeremy', 345, 295),
      ChartData2('Kenny', 327.5, 312.5),
      ChartData2('Kevin', 147, 493),
      ChartData2('Franco', 77, 243),
      ChartData2('Cristian', 342.5, 297.5),
      ChartData2('Vanessa', 441.5, 198.5),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 800,
        child: Column(
            // width: 800,
            
            children: [
            SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                legend: Legend(isVisible: true), 
                tooltipBehavior: _tooltipBehavior,
                series: <ChartSeries>[
                  StackedBar100Series<ChartData2, String>(
                      name: "Horas Realizadas",
                      color: AppColors.mainBlueColor,
                      dataSource: chartData2,
                      xValueMapper: (ChartData2 data, _) => data.x,
                      yValueMapper: (ChartData2 data, _) => data.y),
                  StackedBar100Series<ChartData2, String>(
                      name: "Horas Faltantes",
                      color: AppColors.secondaryColor,
                      dataSource: chartData2,
                      xValueMapper: (ChartData2 data, _) => data.x,
                      yValueMapper: (ChartData2 data, _) => data.y2),
                ]),
            SfCartesianChart(
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
              ],
            ),
            ]
            ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2);
  final String x;
  final double y1;
  final double y2;
}

class ChartData2 {
  ChartData2(this.x, this.y, this.y2);
  final String x;
  final double y;
  final double y2;
}
