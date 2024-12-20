import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  static bool _isObscure = true;
  static bool _isObscureConfirmation = true;
  static bool _math = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool get math => _math;
  bool get isObscure => _isObscure;
  bool get isObscureConfirmation => _isObscureConfirmation;

  void toggleMath() {
    _math = !_math;
    notifyListeners();
  }

  void toggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }

  void toggleObscureConfirmation() {
    _isObscureConfirmation = !_isObscureConfirmation;
    notifyListeners();
  }

  void register(BuildContext context) {
    if (formKey.currentState!.validate()) {
      _math = false;
      if (passwordController.text != confirmPasswordController.text) {
        /// Show snackbar if passwords do not match
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(child: Text('Las contraseñas no coinciden')),
          ),
        );
        toggleMath();
        return;
      } else if (passwordController.text == confirmPasswordController.text) {
        _math = false;
        notifyListeners();
      }

      print(
          'Email: ${emailController.text} - Password: ${passwordController.text} - Confirm Password: ${confirmPasswordController.text}');
    }
  }

  void backLogin(BuildContext context) {
    clearInputs();
    Navigator.pop(context);
  }

  void clearInputs() {
    _math = false;
    formKey.currentState!.reset();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  /// Dispose controllers for memory management
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
