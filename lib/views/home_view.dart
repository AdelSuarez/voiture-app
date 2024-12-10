import 'package:flutter/material.dart';
import 'package:manager_car/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ItemVehicle(
              typeVehicle: 'car',
              title: 'Hilux',
              vehicleMileageKm: '134.000',
              group: 'Casa 14.5',
              isWarning: true),
          ItemVehicle(
            typeVehicle: 'car',
            title: 'Corolla',
            vehicleMileageKm: '180.000',
            group: 'Casa 14.5',
          ),
          ItemVehicle(
            typeVehicle: 'car',
            title: 'Yaris',
            vehicleMileageKm: '90.000',
          ),
          ItemVehicle(
            typeVehicle: 'moto',
            title: 'Horse',
            vehicleMileageKm: '2.500',
            group: 'Armenia',
          ),
          ItemVehicle(
            group: 'Nautilos',
            title: 'Rompe mar',
            vehicleMileageKm: '10.000',
            typeVehicle: 'ship',
            isWarning: true,
          ),
          ItemVehicle(
            group: 'Armenia',
            title: 'Tracker',
            vehicleMileageKm: '11.500',
            typeVehicle: 'machine',
          ),
        ],
      ),
    );
  }
}
