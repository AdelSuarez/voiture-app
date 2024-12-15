import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
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
              SizedBox(height: size.height * 0.06),
              const Text(
                'Inicia con tu cuenta de Voiture',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(height: size.height * 0.01),
              const CustomTextField(
                  hintText: 'Correo', profixIcon: Icons.email),
              const CustomTextField(
                  hintText: 'Contraseña',
                  profixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye),
              SizedBox(height: size.height * 0.01),
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
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'home'),
              ),
              SizedBox(height: size.height * 0.06),
              OtherAuthentication(size: size),
              SizedBox(height: size.height * 0.06),
              FooterAuthentication(
                  message: '¿No tienes una cuenta?',
                  action: 'Regístrate',
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
