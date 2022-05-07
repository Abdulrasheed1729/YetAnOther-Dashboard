import 'package:flutter/material.dart';
import 'package:stephen_dashboard/models/sales_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SalesPieChart extends StatelessWidget {
  const SalesPieChart({Key? key, required this.data}) : super(key: key);
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
    return charts.PieChart<String>(
      series,
      animate: true,
      behaviors: [
        charts.DatumLegend(
          position: charts.BehaviorPosition.end,
          outsideJustification: charts.OutsideJustification.start,
          horizontalFirst: false,
          desiredMaxRows: 2,
          cellPadding: const EdgeInsets.only(right: 4.0, bottom: 4.0),
          entryTextStyle: charts.TextStyleSpec(
            color: charts.MaterialPalette.purple.shadeDefault,
            fontFamily: 'Georgia',
            fontSize: 11,
          ),
        ),
      ],
      defaultRenderer: charts.ArcRendererConfig(
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.outside,
          )
        ],
      ),
    );
  }
}
