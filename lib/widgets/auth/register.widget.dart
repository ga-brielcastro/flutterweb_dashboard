import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/controllers/signup.controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;

  late final controller = SignUpController(onSuccessRegister: () {
    Future.delayed(Duration.zero, () {
      Navigator.pushNamed(context, '/home');
    });
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
      width: 400,
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Login in your account.',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'VarelaRound',
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(
            'Don\'t have a account? Sing Up',
            style: TextStyle(
              fontFamily: 'VarelaRound',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.email_rounded,
                  color: Colors.black26,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black54,
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
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.key_rounded,
                  color: Colors.black26,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: showPassword == false ? true : false,
                    validator: (value) => controller.validatePassword(value),
                    onSaved: (value) => controller.password = value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          showPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 20,
                          color: Colors.black26,
                        ),
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
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
                Navigator.pushNamed(context, '/home');
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
