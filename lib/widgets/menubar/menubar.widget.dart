import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/menubar/button.menubar.widget.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.rocket_rounded,
              color: Theme.of(context).colorScheme.primary,
              size: 20,
            ),
          ),
          Column(
            children: [
              ButtonMenuBar(
                icon: Icons.dashboard_rounded,
                click: true,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonMenuBar(
                icon: Icons.wallet_rounded,
                click: false,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonMenuBar(
                icon: Icons.shopping_bag_rounded,
                click: false,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonMenuBar(
                icon: Icons.data_saver_off_rounded,
                click: false,
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonMenuBar(
                icon: Icons.account_circle_rounded,
                click: false,
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_rounded,
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.power_settings_new_rounded,
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
