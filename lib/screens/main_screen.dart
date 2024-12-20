import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context);
    final navigationCurrentIndex = navigationBarProvider.currentIndex;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.pushNamed(context, 'profile');
          },
        ),
        title: const Text(
          'VoitureApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar:
          _NavigationBar(navigationBarProvider: navigationBarProvider),
      body: IndexedStack(
        index: navigationBarProvider.currentIndex,
        children: navigationBarProvider.views,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(
              context, navigationBarProvider.getRoute(navigationCurrentIndex));
        },
        label: Text(navigationBarProvider.getRouteName(navigationCurrentIndex)),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    required this.navigationBarProvider,
  });

  final NavigationBarProvider navigationBarProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 1.0,
          color: Colors.grey[300],
        ),
        BottomNavigationBar(
          currentIndex: navigationBarProvider.currentIndex,
          onTap: (index) {
            navigationBarProvider.currentIndex = index;
          },
          showUnselectedLabels: false,
          // showSelectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Grupos',
            ),
          ],
        ),
      ],
    );
  }
}
