import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class AboutVehicleScreen extends StatelessWidget {
  const AboutVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hilux'),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            icon: Icon(
              Icons.delete,
              color: Colors.grey[600],
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const DisplayDialog(
                  title: 'Eliminar Vehículo',
                  content: '¿Estás seguro de eliminar este vehículo?',
                ),
              );
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text('Hilux'),
            ),
          ],
        ),
      ),
    );
  }
}
