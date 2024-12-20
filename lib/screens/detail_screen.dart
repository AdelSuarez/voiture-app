import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, bool> listItem = {
      // 'Manual del motor': true,
      // 'Detalles de piezas': false,
      // 'Costos': false,
    };

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.grey[600]),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete, color: Colors.grey[600]),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                'Reparacion de motor',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget nunc nec nunc ultricies tincidunt. Nullam eget nunc nec nunc ultricies tincidunt.',
            ),
            TitleAction(
              title: 'Lista',
              onPressed: () {
                print('List');
              },
              isPadding: false,
            ),
            if (listItem.isEmpty)
              const Icon(
                Icons.list,
                size: 40,
                color: Colors.grey,
              ),
            for (var item in listItem.entries)
              ListTile(
                contentPadding: EdgeInsets.zero,
                trailing: const Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
                title: Text(item.key),
                leading: Checkbox(
                  value: item.value,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
            // TitleAction(
            //   title: 'Documentos',
            //   onPressed: () {
            //     print('Document');
            //   },
            //   isPadding: false,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text(
            //       'Archivos',
            //       style: TextStyle(fontSize: 14),
            //     ),
            //     IconButton(
            //         onPressed: () {
            //           print('new document');
            //         },
            //         icon: const Icon(Icons.add_circle_outline)),
            //   ],
            // ),
            // const Column(
            //   children: [
            //     ItemDocument(
            //       title: 'Manual del motor',
            //       documentIcon: 'pdf_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Detalles de piezas',
            //       documentIcon: 'word_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //     ItemDocument(
            //       title: 'Costos',
            //       documentIcon: 'excel_icon',
            //       date: '12/12/24',
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
