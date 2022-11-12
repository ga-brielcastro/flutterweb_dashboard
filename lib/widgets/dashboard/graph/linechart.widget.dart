import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 10,
                  minY: 0,
                  maxY: 10,
                  borderData: FlBorderData(show: false),
                  backgroundColor: Colors.white,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 4),
                        const FlSpot(1, 6),
                        const FlSpot(2, 8),
                        const FlSpot(3, 6.2),
                        const FlSpot(4, 6),
                        const FlSpot(5, 8),
                        const FlSpot(6, 9),
                        const FlSpot(7, 7),
                        const FlSpot(8, 6),
                        const FlSpot(9, 7.8),
                        const FlSpot(10, 8),
                      ],
                      isCurved: false,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.indigoAccent,
                          Colors.purpleAccent,
                        ],
                      ),
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            Colors.indigoAccent.withOpacity(0.2),
                            Colors.purpleAccent.withOpacity(0.2),
                          ],
                        ),
                      ),
                      dotData: FlDotData(show: false),
                    ),
                  ],
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: false,
                    drawVerticalLine: true,
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: Colors.black.withOpacity(0.2),
                        strokeWidth: 0.8,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                        reservedSize: 10,
                        getTitlesWidget: (value, meta) {
                          String text = '';
                          switch (value.toInt()) {
                            case 1:
                              text = '100';
                              break;
                            case 2:
                              text = '200';
                              break;
                            case 3:
                              text = '300';
                              break;
                            case 4:
                              text = '400';
                              break;
                            case 5:
                              text = '500';
                              break;
                            case 6:
                              text = '600';
                              break;
                            case 7:
                              text = '700';
                              break;
                            case 8:
                              text = '800';
                              break;
                            case 9:
                              text = '900';
                              break;
                            case 10:
                              text = '1000';
                              break;
                            default:
                              return Container();
                          }
                          return Text(
                            text,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            );
  }
}