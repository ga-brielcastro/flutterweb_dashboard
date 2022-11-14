import 'package:flutter/material.dart';

class MySnackBar {
  void showSnackbar(BuildContext context, String message, Color bgColor) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      elevation: 0,
      width: 400,
      backgroundColor: bgColor,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(20),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
