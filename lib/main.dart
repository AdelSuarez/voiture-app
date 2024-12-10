import 'package:flutter/material.dart';
import 'package:manager_car/providers/navigation_bar_provider.dart';
import 'package:manager_car/screens/screens.dart';
import 'package:manager_car/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationBarProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MainScreen(),
        'new_vehicle': (context) => const NewVehicle(),
        'about_vehicle': (context) => const AboutVehicleScreen(),
        'about_group_vehicle': (context) => const AboutGroupCarScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
