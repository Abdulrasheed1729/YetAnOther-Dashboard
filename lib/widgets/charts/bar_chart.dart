import 'package:flutter/material.dart';
import 'package:stephen_dashboard/models/sales_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SalesBarChart extends StatelessWidget {
  const SalesBarChart({Key? key, required this.data}) : super(key: key);
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
    return charts.BarChart(series, animate: true);
  }
}
