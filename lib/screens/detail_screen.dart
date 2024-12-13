import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
