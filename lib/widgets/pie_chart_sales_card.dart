import 'package:flutter/material.dart';
import 'package:stephen_dashboard/widgets/charts/pie_chart.dart';
import '../models/sales_model.dart';

class DonutPieChartSalesCard extends StatelessWidget {
  const DonutPieChartSalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 200,
        width: 500,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 5,
                color: const Color.fromARGB(255, 5, 67, 138),
                child: const Center(
                  child: Text(
                    'Sales by Year',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SalesPieChart(data: Sales.data),
                )),
          ],
        ),
      ),
    );
  }
}
