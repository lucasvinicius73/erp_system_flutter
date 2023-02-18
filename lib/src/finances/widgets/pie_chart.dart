import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../models/data_chart.dart';

class PieChartWidget extends StatelessWidget {
  final String title;
  final List<DataChart> dataList;
  const PieChartWidget(this.title, {super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Faturamento'),
      series: [
        PieSeries<DataChart, String>(
          dataSource: dataList,
          xValueMapper: (DataChart data, _) => data.title,
          yValueMapper: (DataChart data, _) => data.data,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
        )
      ],
    );
  }
}
