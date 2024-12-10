import 'package:flutter/material.dart';

class NavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final List<String> _typoButton = ['Nuevo vehículo', 'Nuevo Grupo'];

  int get currentIndex => _currentIndex;
  List<String> get typoButton => _typoButton;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
