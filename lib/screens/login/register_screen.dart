import 'package:flutter/material.dart';
import 'package:manager_car/providers/providers.dart';
import 'package:manager_car/widgets/widgets.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registerProvioder = Provider.of<RegisterProvider>(context);

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Form(
            key: registerProvioder.formKey,
            child: ListView(
              children: [
                const Text(
                  'Regístrate \nen Voiture',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                SizedBox(height: size.height * 0.018),
                SizedBox(
                  height: size.height * 0.36,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Correo',
                        profixIcon: Icons.email,
                        controller: registerProvioder.emailController,
                      ),
                      CustomTextField(
                        hintText: 'Contraseña',
                        profixIcon: Icons.lock,
                        controller: registerProvioder.passwordController,
                        isPassword: true,
                        isMath: registerProvioder.math,
                        isObscure: registerProvioder.isObscure,
                        toggleObscure: registerProvioder.toggleObscure,
                      ),
                      CustomTextField(
                        hintText: 'Confirmar contraseña',
                        profixIcon: Icons.lock,
                        controller: registerProvioder.confirmPasswordController,
                        isPassword: true,
                        isMath: registerProvioder.math,
                        isObscure: registerProvioder.isObscureConfirmation,
                        toggleObscure:
                            registerProvioder.toggleObscureConfirmation,
                      ),
                    ],
                  ),
                ),
                ButtonAuthentication(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    registerProvioder.register(context);
                  },
                  text: 'Registrarse',
                ),
                SizedBox(height: size.height * 0.20),
                // SizedBox(height: size.height * 0.05),
                // OtherAuthentication(size: size),
                // SizedBox(height: size.height * 0.04),
                // const SizedBox(height: 2),
                FooterAuthentication(
                  message: '¿Ya tienes una cuenta?',
                  action: 'Inicia sesión',
                  onPressed: () {
                    registerProvioder.backLogin(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
