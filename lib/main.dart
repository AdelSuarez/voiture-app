import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manager_car/firebase_options.dart';
import 'package:manager_car/providers/providers.dart';
import 'package:manager_car/routes/app_routes.dart';
import 'package:manager_car/theme/app_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationBarProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => VehiclesProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(create: (_) => LoginProvider(), lazy: false),
        ChangeNotifierProvider(create: (_) => RegisterProvider(), lazy: false),
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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
    );
  }
}
