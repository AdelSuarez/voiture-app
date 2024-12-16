import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documentos'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
            ItemDocument(
              title: 'Manual del motor',
              documentIcon: 'pdf_icon',
              date: '12/12/24',
            ),
          ],
        ),
      ),
    );
  }
}
