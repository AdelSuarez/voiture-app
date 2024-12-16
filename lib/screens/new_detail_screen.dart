import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class NewDetailScreen extends StatelessWidget {
  const NewDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 18;

    const List<String> types = <String>[
      '-',
      'Servicio',
      'Reparación',
      'Mantenimiento',
      'Otro',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Detalle'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Titulo',
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
            const CustomDropdownMenu(
              items: types,
              title: 'Tipo de destalle:',
            ),
            const SizedBox(height: height),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
