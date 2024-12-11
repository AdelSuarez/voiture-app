import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;

  final Map<int, List> _routes = {
    0: ['Nuevo vehículo', 'new_vehicle'],
    1: ['Nuevo Grupo', 'new_group'],
  };

  int get currentIndex => _currentIndex;
  Map<int, List> get routes => _routes;

  String getRoute(int index) {
    return _routes[index]?[1];
  }

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
