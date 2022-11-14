import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/dashboard/dashboard.widget.dart';
import 'package:flutter_dashboard/widgets/menu_navigation/navigation_menu.widget.dart';
import 'package:flutter_dashboard/widgets/quicklybar/quicklybar.widget.dart';

import '../widgets/menubar/menubar.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        child: Row(
          children: const [
            MenuBar(),
            // NavigationMenu(),
            QuicklyBar(),
            Dashboard(),
          ],
        ),
      ),
    );
  }
}
