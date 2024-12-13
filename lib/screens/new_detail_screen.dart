import 'package:flutter/material.dart';

class NewDetailScreen extends StatelessWidget {
  const NewDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Detalle'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text('Detalle')),
          ],
        ),
      ),
    );
  }
}
