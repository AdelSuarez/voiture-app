import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (context) => const LoginScreen(),
    'register': (context) => const RegisterScreen(),
    'home': (context) => const MainScreen(),
    'new_vehicle': (context) => const NewVehicleScreen(),
    'new_group': (context) => const NewGroupScreen(),
    'about_vehicle': (context) => const AboutVehicleScreen(),
    'about_group_vehicle': (context) => const AboutGroupCarScreen(),
    'profile': (context) => const ProfileScreen(),
    'log_screen': (context) => const LogScreen(),
    'new_detail': (context) => const NewDetailScreen(),
    'detail_screen': (context) => const DetailScreen(),
    'document_screen': (context) => const DocumentScreen(),
  };
}
