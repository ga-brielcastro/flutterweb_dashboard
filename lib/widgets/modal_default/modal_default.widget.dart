import 'package:flutter/material.dart';
import 'package:flutter_dashboard/controllers/signout.controller.dart';
import 'package:flutter_dashboard/shared/snackbar.dart';

import '../../controllers/signin.controller.dart';

class ModalDefault extends StatelessWidget {
  ModalDefault({Key? key}) : super(key: key);
  MySnackBar mySnackBar = MySnackBar();
  late final controller = SignOutController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 400,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              spreadRadius: 2,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'SignOut',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Are you sure that you want SignOut ?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 40,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 40,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.signOut()) {
                        Navigator.of(context).pushNamed('/auth');
                      } else {
                        mySnackBar.showSnackbar(
                            context,
                            'Não foi possível realizar o Logout!',
                            Colors.redAccent.withOpacity(0.8));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
