import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/dashboard/profile/menu.items.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  void _showMyModal(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: const Text('test'),
      content: const Text('test test'),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Confirm'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          const SizedBox(
            width: 30,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                      fontFamily: 'VarelaRound',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Gabriel Castro',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'VarelaRound',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              MyPopupMenu(
                menuList: [
                  PopupMenuItem(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black54,
                      ),
                      title: Text(
                        'My Profile',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black54,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    onTap: ()  {

                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.power_settings_new_rounded,
                        color: Colors.black54,
                      ),
                      title: Text(
                        'SignOut',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
