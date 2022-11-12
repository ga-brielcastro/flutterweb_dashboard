import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dashboard/widgets/quicklybar/actions/action-button.widget.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(
            icon: Icons.credit_card,
            text: 'Deposit',
          ),
          ActionButton(
            icon: Icons.credit_card,
            text: 'Transfer',
          ),
          ActionButton(
            icon: Icons.credit_score_rounded,
            text: 'Withdraw',
          ),
          ActionButton(
            icon: Icons.more_horiz_rounded,
            text: 'More',
          ),
        ],
      ),
    );
  }
}
