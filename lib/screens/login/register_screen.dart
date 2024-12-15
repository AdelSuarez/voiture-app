import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: ListView(
            children: [
              // SizedBox(height: size.height * 0.07),
              const Text(
                'Regístrate \nen Voiture',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              SizedBox(height: size.height * 0.03),
              const CustomTextField(
                  hintText: 'Correo', profixIcon: Icons.email),
              const CustomTextField(
                hintText: 'Contraseña',
                profixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye,
              ),
              const CustomTextField(
                hintText: 'Confirmar contraseña',
                profixIcon: Icons.lock,
                suffixIcon: Icons.remove_red_eye,
              ),
              SizedBox(height: size.height * 0.038),
              ButtonAuthentication(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
                text: 'Registrarse',
              ),
              SizedBox(height: size.height * 0.06),
              OtherAuthentication(size: size),
              SizedBox(height: size.height * 0.06),
              // const SizedBox(height: 2),
              FooterAuthentication(
                message: '¿Ya tienes una cuenta?',
                action: 'Inicia sesión',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
