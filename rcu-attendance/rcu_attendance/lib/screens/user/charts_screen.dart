import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:rcu_assistant/tools/model/sample_view.dart';

class ChartsScreen extends StatelessWidget {
  ChartsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(
          text: isCardView ? '' : 'Population growth of various countries'),
      primaryXAxis: CategoryAxis( 
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          labelFormat: '{value}%',
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getDefaultColumnSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }
}

 List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeries() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'China', y: 0.541),
          ChartSampleData(x: 'Brazil', y: 0.818),
          ChartSampleData(x: 'Bolivia', y: 1.51),
          ChartSampleData(x: 'Mexico', y: 1.302),
          ChartSampleData(x: 'Egypt', y: 2.017),
          ChartSampleData(x: 'Mongolia', y: 1.683),
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true, textStyle: TextStyle(fontSize: 10)),
      )
    ];
  }

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}