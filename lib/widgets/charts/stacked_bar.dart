import 'package:flutter/material.dart';
import 'package:stephen_dashboard/models/sales_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SalesStackedBarChart extends StatelessWidget {
  const SalesStackedBarChart({Key? key, required this.data}) : super(key: key);
  final List<Sales> data;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Sales, String>> series = [
      charts.Series(
        id: 'Sales',
        data: data,
        domainFn: (Sales series, _) => series.year.toString(),
        measureFn: (Sales series, _) => series.units,
        colorFn: (Sales series, _) => series.barColor,
      )
    ];
    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.stacked,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: const charts.OrdinalAxisSpec(),
    );
  }
}
