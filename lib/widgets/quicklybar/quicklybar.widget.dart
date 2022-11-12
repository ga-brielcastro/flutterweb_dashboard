import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/quicklybar/actions/actions.widget.dart';
import 'package:flutter_dashboard/widgets/quicklybar/card.widget.dart';
import 'package:flutter_dashboard/widgets/quicklybar/quick-transfer/quick-transfer.widget.dart';

class QuicklyBar extends StatelessWidget {
  const QuicklyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 350,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 19, 19, 19),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CardWidget(),
            ActionsWidget(),
            QuickTransfer(),
          ],
        ),
      ),
    );
  }
}
