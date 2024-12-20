import 'package:flutter/material.dart';
import 'package:manager_car/providers/providers.dart';
import 'package:manager_car/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Form(
            key: loginProvider.formKey,
            child: ListView(
              children: [
                SizedBox(height: size.height * 0.07),
                const Text(
                  'Bienvenido \na Voiture',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                SizedBox(height: size.height * 0.05),
                const Text(
                  'Inicia con tu cuenta de Voiture',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                SizedBox(height: size.height * 0.01),
                SizedBox(
                  height: size.height * 0.23,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Correo',
                        profixIcon: Icons.email,
                        controller: loginProvider.emailController,
                      ),
                      CustomTextField(
                        hintText: 'Contraseña',
                        profixIcon: Icons.lock,
                        controller: loginProvider.passwordController,
                        isPassword: true,
                        isObscure: loginProvider.isObscure,
                        toggleObscure: loginProvider.toggleObscure,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      print('Olvidaste tu contraseña');
                    },
                    child: const Text('¿Olvidaste tu contraseña?'),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                ButtonAuthentication(
                    text: 'Ingresar',
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      loginProvider.login(context);
                    }),
                SizedBox(height: size.height * 0.05),
                OtherAuthentication(size: size),
                SizedBox(height: size.height * 0.04),
                FooterAuthentication(
                    message: '¿No tienes una cuenta?',
                    action: 'Regístrate',
                    onPressed: () {
                      loginProvider.goToRegister(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
