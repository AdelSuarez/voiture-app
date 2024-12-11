import 'package:flutter/material.dart';

class AboutGroupCarScreen extends StatelessWidget {
  const AboutGroupCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grupo 1'),
      ),
      body: Center(
        child: Text('Informacion del grupo 1'),
      ),
    );
  }
}
