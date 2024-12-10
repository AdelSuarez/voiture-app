import 'package:flutter/material.dart';

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

class NewVehicle extends StatelessWidget {
  const NewVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 18;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Vehículo'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
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
                          labelText: 'KM / NM',
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
                _DropdownMenu(title: 'Tipo de Vehículo:', items: types),
                SizedBox(height: height),
                _DropdownMenu(
                  title: 'Grupos:',
                  items: groups,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'Guardar',
                    style: TextStyle(fontSize: 18),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}

class _DropdownMenu extends StatelessWidget {
  final String title;
  final List<String> items;

  const _DropdownMenu({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 15),
        Expanded(
          child: DropdownButtonFormField(
            isExpanded: true,
            dropdownColor: Colors.white,
            value: items.first,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              print(value);
            },
          ),
        ),
      ],
    );
  }
}
