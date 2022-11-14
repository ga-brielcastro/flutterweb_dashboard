import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

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
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
