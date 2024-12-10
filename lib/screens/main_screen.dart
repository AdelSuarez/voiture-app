import 'package:flutter/material.dart';
import 'package:manager_car/views/views.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationBarProvider = Provider.of<NavigationBarProvider>(context);
    final views = <Widget>[
      const HomeView(),
      const GroupView(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VoitureApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(1.0),
        //   child: Container(
        //     color: Colors.grey[300],
        //     height: 1.0,
        //   ),
        // ),
      ),
      bottomNavigationBar:
          _NavigationBar(navigationBarProvider: navigationBarProvider),
      body: IndexedStack(
        index: navigationBarProvider.currentIndex,
        children: views,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, 'new_vehicle');
        },
        label: Text(navigationBarProvider
            .typoButton[navigationBarProvider.currentIndex]),
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
            navigationBarProvider.setIndex(index);
          },
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
