import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TimeSeriesSalesCard extends StatelessWidget {
  const TimeSeriesSalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 200,
        width: 500,
        child: Column(
          children: [
            const Expanded(
              child: SizedBox(
                height: 20,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sales by month'),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: charts.TimeSeriesChart(
                  _createSampleData(),
                  animate: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      TimeSeriesSales(DateTime(2021, 9, 28), 15),
      TimeSeriesSales(DateTime(2021, 9, 29), 25),
      TimeSeriesSales(DateTime(2021, 10, 3), 100),
      TimeSeriesSales(DateTime(2021, 10, 5), 75),
      TimeSeriesSales(DateTime(2021, 10, 11), 150),
      TimeSeriesSales(DateTime(2021, 10, 12), 52),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}

//  List<charts.Series<TimeSeriesSales, DateTime>> _createData() {
   
