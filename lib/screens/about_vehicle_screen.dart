import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class AboutVehicleScreen extends StatelessWidget {
  const AboutVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List chips = [
      ['Check motor', 'high_priority'],
      ['Check Cauchos ', 'medium_priority'],
      ['Verficar radio', 'low_pririty'],
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print('Edit');
            },
            icon: Icon(Icons.edit, color: Colors.grey[600]),
          ),
          IconButton(
            icon: Icon(Icons.delete, color: Colors.grey[600]),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const DisplayDialog(
                    title: 'Eliminar Vehículo',
                    content: '¿Estás seguro de eliminar este vehículo?'),
              );
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration_rounded, color: Colors.grey[600]),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text('Hilux sadasdasdasdasdasdasdasdasd',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _DataItem(title: 'KM / HRS', data: '134.000'),
                    _DataItem(title: 'Año', data: '2008'),
                    _DataItem(title: 'Tipo', data: 'Carro'),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text('Grupo:',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 15),
                          Text('Casa 14.5'),
                        ],
                      ),
                      IconButton(
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.all(0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'about_group_vehicle');
                        },
                        icon: const Icon(Icons.visibility),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tags',
                        style: TextStyle(fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.white,
                                context: context,
                                builder: (context) {
                                  return const _NewTag();
                                });
                          },
                          icon: const Icon(Icons.add_circle_outline)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40, // Altura fija para el ListView horizontal
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chips.length,
                    itemBuilder: (_, index) {
                      return _TagStatus(
                        title: chips[index][0],
                        priority: chips[index][1],
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text('Detalles'),
                ),
              ],
            ),
            const Column(
              children: [
                _OperationDetail(
                  title: 'Cambio de aceite asdasdadadasdads ',
                  date: '12/12/24',
                  type: 'servicio',
                  description:
                      'Exercitation aute anim do ea mollit officia in labore nostrud dis sit voluptate.Labore dolor pariatur laboris mollit dolore cupidatat culpa proident nisi laboris fugiat.',
                ),
                _OperationDetail(
                  title: 'Reparacion de Motor',
                  date: '01/01/2025',
                  type: 'reparacion',
                ),
                _OperationDetail(
                  title: 'Limpieza Interior',
                  date: '01/01/2025',
                  type: 'mantenimiento',
                  description:
                      'Exercitation aute anim do ea mollit officia in labore nostrud dis sit voluptate.Labore dolor pariatur laboris mollit dolore cupidatat culpa proident nisi laboris fugiat.',
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Nuevo Ticket'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class _TagStatus extends StatelessWidget {
  final String title;
  final String priority;

  const _TagStatus({
    required this.title,
    required this.priority,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, List> mapChips = {
      'high_priority': [Colors.red[200], Colors.red[300]],
      'medium_priority': [Colors.yellow[200], Colors.yellow[300]],
      'low_pririty': [Colors.blue[200], Colors.blue[300]],
    };
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Chip(
        // labelStyle: TextStyle(color: Colors.white),
        side: BorderSide(color: mapChips[priority]?[1] as Color),
        backgroundColor: mapChips[priority]?[0] as Color,
        label: Text(title),
        onDeleted: () {},
      ),
    );
  }
}

class _OperationDetail extends StatelessWidget {
  final String title;
  final String date;
  final String? description;
  final String type;

  const _OperationDetail({
    required this.title,
    required this.date,
    required this.type,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, IconData> mapTypeOperation = {
      'reparacion': Icons.build,
      'servicio': Icons.car_crash,
      'mantenimiento': Icons.settings,
    };

    return GestureDetector(
      onTap: () {
        print('test');
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            )
            //  borderRadius:                      )
            ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(date, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          if (description != '') const SizedBox(height: 8),
          if (description != '')
            Text(description!, overflow: TextOverflow.ellipsis, maxLines: 4),
          const SizedBox(height: 8),
          Row(
            children: [
              Row(
                children: [
                  Icon(mapTypeOperation[type], size: 18, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(type, style: const TextStyle(color: Colors.grey))
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}

class _DataItem extends StatelessWidget {
  final String title;
  final String data;

  const _DataItem({
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(data),
      ],
    );
  }
}

class _NewTag extends StatelessWidget {
  const _NewTag({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> typeTag = [
      'Prioridad Alta',
      'Prioridad Media',
      'Prioridad Baja',
    ];
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    child: const Text('Nuevo Tag',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                    ),
                  ),
                  const SizedBox(height: 18),
                  CustomDropdownMenu(title: 'tipo', items: typeTag),
                ],
              ),
            ),
            CustomButtonSave(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
