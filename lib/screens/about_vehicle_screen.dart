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
            onPressed: () {},
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
            onPressed: () {
              Navigator.pushNamed(context, 'log_screen');
            },
            icon: Icon(Icons.table_rows_rounded, color: Colors.grey[600]),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text('Hilux',
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
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, 'about_group_vehicle'),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200],
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.account_tree_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Grupo:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 15),
                                Text(
                                  'Casa 14.5',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'document_screen');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[300],
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                                  return _NewTag();
                                });
                          },
                          icon: const Icon(Icons.add_circle_outline)),
                    ],
                  ),
                ),
                if (chips.isNotEmpty)
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
            if (chips.isNotEmpty) const SizedBox(height: 15),
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
                        'Detalles',
                        style: TextStyle(fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'new_detail');
                          },
                          icon: const Icon(Icons.add_circle_outline)),
                    ],
                  ),
                ),
                const _OperationDetail(
                  title: 'Cambio de aceite asdasdadadasdads ',
                  date: '12/12/24',
                  type: 'servicio',
                  description:
                      'Exercitation aute anim do ea mollit officia in labore nostrud dis sit voluptate.Labore dolor pariatur laboris mollit dolore cupidatat culpa proident nisi laboris fugiat.',
                  isPhoto: true,
                  isAttachment: false,
                ),
                const _OperationDetail(
                  title: 'Reparacion de Motor',
                  date: '01/01/2025',
                  type: 'reparacion',
                  isPhoto: false,
                  isAttachment: true,
                ),
                const _OperationDetail(
                  title: 'Limpieza Interior',
                  date: '01/01/2025',
                  type: 'mantenimiento',
                  description:
                      'Exercitation aute anim do ea mollit officia in labore nostrud dis sit voluptate.Labore dolor pariatur laboris mollit dolore cupidatat culpa proident nisi laboris fugiat.',
                  isPhoto: false,
                  isAttachment: false,
                ),
                const _OperationDetail(
                  title: 'Revision de Documentos y seriales',
                  date: '01/01/2025',
                  type: 'otro',
                  description:
                      'Exercitation aute anim do ea mollit officia in labore nostrud dis sit voluptate.Labore dolor pariatur laboris mollit dolore cupidatat culpa proident nisi laboris fugiat.',
                  isPhoto: true,
                  isAttachment: true,
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.pushNamed(context, 'new_detail');
      //   },
      //   label: const Text('Nuevo detalle'),
      //   icon: const Icon(Icons.add),
      // ),
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
  final bool isPhoto;
  final bool isAttachment;

  const _OperationDetail({
    required this.title,
    required this.date,
    required this.type,
    this.description = '',
    required this.isPhoto,
    required this.isAttachment,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, IconData> mapTypeOperation = {
      'reparacion': Icons.build,
      'servicio': Icons.car_crash,
      'mantenimiento': Icons.settings,
      'otro': Icons.more_horiz,
    };

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'detail_screen');
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(mapTypeOperation[type], size: 18, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(type, style: const TextStyle(color: Colors.grey))
                ],
              ),
              Row(
                children: [
                  if (isAttachment)
                    const Icon(Icons.attach_file, size: 18, color: Colors.grey),
                  if (isPhoto)
                    const Icon(Icons.photo, size: 18, color: Colors.grey),
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
                  const TextField(
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
