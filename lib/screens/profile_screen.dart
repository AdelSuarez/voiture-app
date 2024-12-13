import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Tema oscuro'),
              subtitle: const Text('Activar o desactivar el tema oscuro'),
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
