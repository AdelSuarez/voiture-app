import 'package:flutter/material.dart';
import 'package:manager_car/api/authentication.dart';
import 'package:manager_car/widgets/show_message.dart';

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
        showMessage(
            context: context,
            message: 'Las contraseñas no coinciden',
            color: Colors.red);
        toggleMath();
        return;
      } else if (passwordController.text == confirmPasswordController.text) {
        _math = false;
        notifyListeners();
      }

      Authentication().registerUser(
        email: emailController.text,
        password: passwordController.text,
        context: context,
        onSuccess: () {
          clearInputs();
          Navigator.pushNamed(context, 'home');
        },
        showMessage: (message, color) =>
            showMessage(context: context, message: message, color: color),
      );
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
