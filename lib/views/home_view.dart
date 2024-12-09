import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ItemCard(title: 'Hilux', subtitle: 'Description 1'),
          ItemCard(title: 'Corolla', subtitle: 'Description 2'),
          ItemCard(title: 'Yaris', subtitle: 'Description 3'),
        ],
      ),
    );
  }
}
