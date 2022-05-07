import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Sales {
  final int year;
  final int units;
  final charts.Color barColor;

  Sales({this.year = 2021, required this.units, required this.barColor});

  static List<Sales> data = [
    Sales(units: 23, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    Sales(
        year: 2018,
        units: 120,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
    Sales(
        year: 2020,
        units: 56,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 54, 143, 244))),
    Sales(
        year: 2019,
        units: 79,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 201, 70, 201))),
  ];

  static List<Sales> secondData = [
    Sales(units: 23, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    Sales(
        year: 2011,
        units: 113,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(246, 209, 100, 27))),
    Sales(
        year: 2012,
        units: 48,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 244, 231, 54))),
    Sales(
        year: 2013,
        units: 20,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 104, 223, 57))),
    Sales(
        year: 2014,
        units: 39,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 57, 191, 231))),
    Sales(
        year: 2015,
        units: 189,
        barColor: charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 238, 47, 105))),
  ];
}
