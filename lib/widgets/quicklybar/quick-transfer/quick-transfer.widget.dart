import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/quicklybar/quick-transfer/button-transfer.widget.dart';
import 'package:flutter_dashboard/widgets/quicklybar/quick-transfer/input-transfer.widget.dart';
import 'package:flutter_dashboard/widgets/quicklybar/quick-transfer/total.widget.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Quick Transfer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InputTransfer(),
            SizedBox(
              height: 10,
            ),
            ButtonTransfer(),
            SizedBox(
              height: 20,
            ),
            Total(),
          ],
        ),
      ),
    );
  }
}
