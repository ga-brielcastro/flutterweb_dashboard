import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/controllers/signin.controller.dart';

import '../widgets/auth/login.widget.dart';

class AuthPage extends StatelessWidget {
  
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black54.withOpacity(0.8),
              Colors.indigo.withOpacity(0.8),
              Colors.purple.withOpacity(0.8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              margin: const EdgeInsets.only(
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.rocket),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'VarelaRound',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: LoginWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
