import 'package:flutter/material.dart';
import 'package:manager_car/models/models.dart';

class VehiclesProvider extends ChangeNotifier {
  /// this is the list of vehicles
  final List<Vehicle> listVehicles = [];

  VehiclesProvider() {
    addVehicle();
  }

  void addVehicle() {
    print('addVehicle');
    notifyListeners();
  }
}
