import 'package:flutter/material.dart';

class ButtonMenuBar extends StatefulWidget {
  IconData icon;
  bool click;
  ButtonMenuBar({
    super.key,
    required this.icon,
    required this.click,
  });

  @override
  State<ButtonMenuBar> createState() => _ButtonMenuBarState();
}

class _ButtonMenuBarState extends State<ButtonMenuBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.click = !widget.click;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.click ? Theme.of(context).colorScheme.primary : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: Icon(
          widget.icon,
          color: Theme.of(context).colorScheme.onSecondary,
          size: 20,
        ),
      ),
    );
  }
}
