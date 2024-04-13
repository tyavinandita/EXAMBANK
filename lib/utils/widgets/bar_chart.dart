import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:figmaapp/data/chart_data.dart';

class BarChartContent extends StatelessWidget {
  const BarChartContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          leftTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value, _) => const TextStyle(
              fontSize: 12,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'Natural Sciences';
                case 2:
                  return 'Social Sciences';
                case 3:
                  return 'Mathematics';
                case 4:
                  return 'International Language';
              }
              return '';
            },
            rotateAngle: -45,
          ),
        ),
        borderData: FlBorderData(
            border: Border.all(color: Colors.transparent, width: 0)),
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 16,
        barGroups: barChartGroupData.sublist(0, 4),
      ),
    );
  }
}
