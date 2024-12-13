import 'package:flutter/material.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de actividades'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Reparacion de Motor'),
                  Text('10/10/10',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Autor: Juan Perez'), Text('Modificacion')],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cambio de Aceite'),
                  Text('10/10/10',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Autor: Juan Perez'), Text('Modificacion')],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cambio de Frenos'),
                  Text('10/10/10',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Autor: Juan Perez'), Text('Modificacion')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
