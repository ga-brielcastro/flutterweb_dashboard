import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class SignInController {
  String? email;
  String? password;
  final formKey = GlobalKey<FormState>();
  var _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    onUpdate();
  }

  var _error = '';
  String get error => _error;
  set error(String value) {
    _error = value;
    onUpdate();
  }

  final VoidCallback onSuccessLogin;
  final VoidCallback onUpdate;

  SignInController({
    required this.onSuccessLogin,
    required this.onUpdate,
  });

  Future<bool> login() async {
    try {
      isLoading = true;
      final response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      isLoading = false;
      if (response.user != null) {
        onSuccessLogin();
      }

      print('>>>>> $response');
      return true;
    } catch (e) {
      isLoading = false;
      return false;
    }
  }

  String? validateEmail(String? email) =>
      email != null && email.isNotEmpty ? null : null;

  String? validatePassword(String? password) =>
      password != null && password.length >= 6 ? null : null;

  bool validate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
