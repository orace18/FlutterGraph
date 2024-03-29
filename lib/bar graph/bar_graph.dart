import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:graphe_test/bar%20graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        lunAmount: weeklySummary[0],
        marAmount: weeklySummary[1],
        merAmount: weeklySummary[2],
        jeuAmount: weeklySummary[3],
        venAmount: weeklySummary[4],
        samAmount: weeklySummary[5],
        dimAmount: weeklySummary[6]);

    myBarData.initializeBarData();
    return BarChart(BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    BarChartRodData(
                        toY: data.y,
                        color: Colors.blue,
                        width: 16,
                        borderRadius: BorderRadius.circular(4),
                        backDrawRodData: BackgroundBarChartRodData(
                          show: true,
                          toY: 100,
                          color: Colors.grey[200],
                        )),
                  ],
                ))
            .toList()));
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style =
      TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'L',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'M',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'M',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'J',
        style: style,
      );
      break;
    case 4:
      text = const Text(
        'V',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'S',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'D',
        style: style,
      );
      break;
    default:
      text = const Text(
        '',
        style: style,
      );
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
