import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class SignUpController {
  String? name;
  String? email;
  String? phone;
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

  final VoidCallback onSuccessRegister;
  final VoidCallback onUpdate;

  SignUpController({required this.onSuccessRegister, required this.onUpdate});

  void register() async {
    try {
      isLoading = true;
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      isLoading = false;
      if (response.user != null) {
        onSuccessRegister();
      }
    } catch (e) {
      isLoading = false;
    }
  }

  String? validateEmail(String? email) =>
      email != null && email.isNotEmpty ? null : 'Email is necessary';

  String? validateName(String? name) =>
  name != null && name.length >= 6
      ? null
      : 'Name is necessary';

      String? validatePhone(String? phone) =>
  phone != null && phone.length >= 6
      ? null
      : 'Phone is necessay';

  String? validatePassword(String? password) =>
      password != null && password.length >= 6
          ? null
          : 'Password is necessary with 6 digits';

  bool validate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}