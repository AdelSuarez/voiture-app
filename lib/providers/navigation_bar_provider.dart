import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;

  /// this is the list of routes for the navigation bar
  final Map<int, List> _routes = {
    0: ['Nuevo vehículo', 'new_vehicle'],
    1: ['Nuevo Grupo', 'new_group'],
  };

  /// getters
  int get currentIndex => _currentIndex;
  Map<int, List> get routes => _routes;

  /// Get the route and name of the route by index
  /// for the navigation bar
  /// @param index
  /// @return String
  String getRoute(int index) {
    return _routes[index]?[1];
  }

  String getRouteName(int index) {
    return _routes[index]?[0];
  }

  ///-----------------------------------------------

  /// Set the index of the navigation bar
  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
