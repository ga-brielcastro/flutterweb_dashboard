import 'package:flutter/material.dart';

class ButtonTransfer extends StatelessWidget {
  const ButtonTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 40,
        maxHeight: 40,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: const Center(
          child: Text(
            'Transfer',
            style: TextStyle(
              color: Colors.white,
                  fontFamily: 'VarelaRound',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
