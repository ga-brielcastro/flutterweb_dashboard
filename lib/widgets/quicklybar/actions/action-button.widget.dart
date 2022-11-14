import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActionButton extends StatelessWidget {
  IconData icon;
  String text;
  ActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 192, 192, 192),
              size: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 145, 145, 145),
                fontFamily: 'VarelaRound',
              ),
            )
          ],
        ));
  }
}
