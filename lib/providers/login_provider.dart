import 'package:flutter/material.dart';
import 'package:manager_car/api/authentication.dart';
import 'package:manager_car/widgets/show_message.dart';

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
      Authentication().loginUser(
          email: emailController.text,
          password: passwordController.text,
          context: context,
          onSuccess: () {
            clearInputs();
            Navigator.pushNamed(context, 'home');
          },
          showMessage: (message, color) =>
              showMessage(context: context, message: message, color: color));
    }
  }
}
