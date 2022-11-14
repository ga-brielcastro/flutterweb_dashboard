import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 1;

  changeDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: changeDestination,
      unselectedIconTheme: const IconThemeData(color: Colors.white),
      selectedIconTheme: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      indicatorColor: Colors.indigoAccent,
      useIndicator: true,

      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.rocket),
          label: Text(''),
        ),

        NavigationRailDestination(
          icon: Icon(Icons.dashboard_rounded),
          label: Text(''),
        ),

        NavigationRailDestination(
          icon: Icon(Icons.account_circle_rounded),
          label: Text(''),
        ),

        NavigationRailDestination(
          icon: Icon(Icons.settings),
          label: Text(''),
        ),

        NavigationRailDestination(
          icon: Icon(Icons.power_settings_new_rounded),
          label: Text(''),
        ),
      ],
    );
  }
}
