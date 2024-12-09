import 'package:flutter/material.dart';

class AboutCarScreen extends StatelessWidget {
  const AboutCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hilux'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red[900],
              ),
              onPressed: () {
                print('delete');
              },
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('About Car'),
      ),
    );
  }
}
