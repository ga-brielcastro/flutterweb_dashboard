import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/shared/snackbar.dart';
import 'package:flutter_dashboard/widgets/notification/notification.widget.dart';

import '../../controllers/signin.controller.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool showPassword = false;
  MySnackBar mySnackBar = MySnackBar();

  late final controller = SignInController(onSuccessLogin: () {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }, onUpdate: () {
    setState(() {});
  });

  @override
  void initState() {
    super.initState();
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Future.delayed(Duration.zero, () {
        Navigator.pushNamed(context, '/home');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 420,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'START',
            style: TextStyle(
              fontFamily: 'VarelaRound',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: const TextSpan(
                text: 'Enter in your account ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VarelaRound',
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Don\'t have a account? ',
              style: const TextStyle(
                fontFamily: 'VarelaRound',
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: 'Sign Up',
                  style: const TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 16,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, '/register');
                    },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Form(
            key: controller.formKey,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.email_rounded,
                        color: Colors.white70,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          validator: (value) => controller.validateEmail(value),
                          onSaved: (value) => controller.email = value,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.key_rounded,
                        color: Colors.white70,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: showPassword == false ? true : false,
                          validator: (value) =>
                              controller.validatePassword(value),
                          onSaved: (value) => controller.password = value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                            ),
                            suffixIcon: GestureDetector(
                              child: Icon(
                                showPassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: double.infinity,
              minWidth: double.infinity,
              maxHeight: 40,
              minHeight: 40,
            ),
            child: ElevatedButton(
              onPressed: () {
                if ( controller.validate() ) {
                  controller.login().then((value) {

                    if (!value) {

                      mySnackBar.showSnackbar(
                          context,
                          'Verifique os dados informados!',
                          Colors.redAccent.withOpacity(0.8));
                    } 
                });
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
