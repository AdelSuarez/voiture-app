import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manager_car/theme/constants.dart';

/// A class that defines the app theme.
class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(),

    /// Define the primary color of the app.
    primaryColor: ColorsCustom.primary,
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
      selectedItemColor: ColorsCustom.primary,
      unselectedItemColor: Colors.grey[800],
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    ),

    /// Define the floating action button theme.
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsCustom.primary,
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
        backgroundColor: WidgetStateProperty.all<Color>(ColorsCustom.primary),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    ),

    /// Define the input decoration theme.
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      hintStyle: const TextStyle(color: Colors.grey),
      floatingLabelStyle: TextStyle(
        color: Colors.grey,
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
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //     ),
    //     backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
    //     foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    //   ),
    // ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(),

    /// Define the primary color of the app.
    primaryColor: ColorsCustom.primary,
    scaffoldBackgroundColor: Colors.grey[850],

    /// Define the app bar theme.
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[850],
      foregroundColor: Colors.white,
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),

    /// Define the bottom navigation bar theme.
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.grey[850],
      selectedItemColor: ColorsCustom.primary,
      unselectedItemColor: Colors.white70,
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    ),

    /// Define the floating action button theme.
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsCustom.primary,
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
        backgroundColor: WidgetStateProperty.all<Color>(ColorsCustom.primary),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
    ),

    /// Define the input decoration theme.
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorsCustom.primary),
      ),
      hintStyle: const TextStyle(color: Colors.grey),
      floatingLabelStyle: WidgetStateTextStyle.resolveWith(
        (states) => TextStyle(
          color: states.contains(WidgetState.focused)
              ? ColorsCustom.primary
              : Colors.grey,
        ),
      ),
    ),

    /// Define the listTile theme.
    listTileTheme: const ListTileThemeData(
      subtitleTextStyle: TextStyle(color: Colors.grey),
    ),

    dialogTheme: const DialogTheme(
      backgroundColor: Colors.black,
    ),
  );
}
