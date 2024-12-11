import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A class that defines the app theme.
class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 136, 87, 56);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(),

    /// Define the primary color of the app.
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,

    /// Define the app bar theme.
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),

    /// Define the bottom navigation bar theme.
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey[800],
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    ),

    /// Define the floating action button theme.
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),

    /// Define the elevated button theme.
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevation: WidgetStateProperty.all<double>(0),
        backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    ),

    /// Define the input decoration theme.
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      hintStyle: const TextStyle(color: Colors.grey),
      floatingLabelStyle: WidgetStateTextStyle.resolveWith(
        (states) => TextStyle(
          color:
              states.contains(WidgetState.focused) ? primaryColor : Colors.grey,
        ),
      ),
    ),

    /// Define the listTile theme.
    listTileTheme: const ListTileThemeData(
      subtitleTextStyle: TextStyle(color: Colors.grey),
    ),

    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
    ),

    /// Define the text button theme.
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    ),
  );
}
