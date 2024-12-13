import 'package:flutter/material.dart';

class ItemVehicle extends StatelessWidget {
  final String title;
  final String vehicleMileageKm;
  final String? group;
  final bool isWarning;
  final String typeVehicle;

  const ItemVehicle({
    super.key,
    required this.title,
    required this.vehicleMileageKm,
    this.group,
    this.isWarning = false,
    required this.typeVehicle,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, Icon> icons = {
      'car': const Icon(
        Icons.directions_car,
      ),
      'moto': const Icon(
        Icons.motorcycle_rounded,
      ),
      'ship': const Icon(
        Icons.directions_boat,
      ),
      'machine': const Icon(
        Icons.agriculture,
      )
    };
    const double size = 14;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'about_vehicle');
      },
      child: ListTile(
        title: Text(title),
        subtitle: Row(
          children: [
            (typeVehicle == 'ship' || typeVehicle == 'machine')
                ? Text('$vehicleMileageKm hrs')
                : Text('$vehicleMileageKm km'),
            if (group != null) const SizedBox(width: 10),
            if (group != null) Text(group!),
            if (isWarning) const SizedBox(width: 10),
            if (isWarning)
              Icon(
                Icons.warning_rounded,
                size: size,
                color: Colors.yellow[800],
              )
          ],
        ),
        leading: icons[typeVehicle],
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: size,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
