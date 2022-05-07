import 'package:flutter/material.dart';
import './widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steven\'s Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12.withOpacity(.5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TitleBar(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    QuantityCard(text: '\$16.47M', secondaryText: 'Sales'),
                    QuantityCard(
                        text: '\$16.87M', secondaryText: 'Budgeted Sales'),
                    QuantityCard(
                        text: '-395.96K',
                        textColor: Colors.red,
                        secondaryText: 'Budgeted Variance'),
                    QuantityCard(
                        text: '-2.3%',
                        textColor: Colors.red,
                        secondaryText: 'Var%'),
                    QuantityCard(text: '83K', secondaryText: 'Order Quantity'),
                  ],
                ),
                Column(
                  children: const [
                    TimeSeriesSalesCard(),
                    ScatterPlotSalesCard(),
                    SalesCard(),
                  ],
                ),
                Column(
                  children: const [
                    DonutBarChartSalesCard(),
                    RightHandBarChartSalesCard(),
                    DonutPieChartSalesCard(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
