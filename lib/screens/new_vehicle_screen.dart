import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

const List<String> groups = <String>[
  'Ninguno',
  'Grupo 1',
  'Grupo 2',
  'Grupo 3',
];
const List<String> types = <String>[
  'Ninguno',
  'Carro',
  'Moto',
  'Barco',
  'Maquinaria',
];

class NewVehicleScreen extends StatelessWidget {
  const NewVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 18;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Vehículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                  ),
                ),
                SizedBox(height: height),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'KM / HRS',
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Año',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height),
                CustomDropdownMenu(title: 'Tipo de Vehículo:', items: types),
                SizedBox(height: height),
                CustomDropdownMenu(
                  title: 'Grupos:',
                  items: groups,
                ),
              ],
            ),
          ),
          // CustomButtonSave(onPressed: () {}),
        ],
      ),
    );
  }
}
