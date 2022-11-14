import 'package:firebase_auth/firebase_auth.dart';

class SignOutController {
  bool signOut() {
    try {
      Future.delayed(const Duration(seconds: 2), () {
        FirebaseAuth.instance.signOut();
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
