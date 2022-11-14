import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {

  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const MyPopupMenu({Key? key, required this.menuList, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}


