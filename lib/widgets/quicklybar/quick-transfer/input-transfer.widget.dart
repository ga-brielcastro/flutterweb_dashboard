import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputTransfer extends StatelessWidget {
  const InputTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(
                  'To',
                  style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontFamily: 'VarelaRound',
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(
                  'R\$',
                  style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'VarelaRound',
                  ),
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontFamily: 'VarelaRound',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
