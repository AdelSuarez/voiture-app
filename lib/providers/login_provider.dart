import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  static bool _isObscure = true;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool get isObscure => _isObscure;

  void toggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void clearInputs() {
    formKey.currentState!.reset();
    emailController.clear();
    passwordController.clear();
  }

  void goToRegister(BuildContext context) {
    clearInputs();
    Navigator.pushNamed(context, 'register');
  }

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      print(
          'Email: ${emailController.text} - Password: ${passwordController.text}');
    }
  }
}
