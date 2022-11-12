import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyPercentageChart extends StatelessWidget {
  double percent;
  String textPercent;
  Color mainColor;
  Color bgColor;
  String type;
  String value;

  MyPercentageChart({
    super.key,
    required this.percent,
    required this.textPercent,
    required this.mainColor,
    required this.bgColor,
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.white,
            child: CircularPercentIndicator(
              radius: 60,
              lineWidth: 10,
              percent: percent,
              backgroundColor: bgColor,
              progressColor: mainColor,
              backgroundWidth: 7,
              center: Text(
                textPercent,
                style: TextStyle(
                  color: mainColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text(
            type,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
