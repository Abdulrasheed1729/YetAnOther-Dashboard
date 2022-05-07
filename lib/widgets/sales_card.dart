import 'package:flutter/material.dart';
import 'package:stephen_dashboard/widgets/charts/bar_chart.dart';
import '../models/sales_model.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 200,
        width: 500,
        child: SalesBarChart(data: Sales.data),
      ),
    );
  }
}
