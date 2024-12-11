import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class NewGroupScreen extends StatelessWidget {
  const NewGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 18;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Grupo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                    ),
                  ),
                  const SizedBox(height: height),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Descripción',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 8,
                    maxLines: null,
                  ),
                  const SizedBox(height: height),
                  CustomButton(
                    text: 'Agregar vehículo',
                    onPressed: () {},
                    icon: Icons.add,
                  ),
                  const SizedBox(height: height),
                  Column(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        child: const ListTile(
                          title: Text('Hilux'),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        child: const ListTile(
                          title: Text('Corolla'),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        child: const ListTile(
                          title: Text('Hilux'),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        child: const ListTile(
                          title: Text('Hilux'),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Guardar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
