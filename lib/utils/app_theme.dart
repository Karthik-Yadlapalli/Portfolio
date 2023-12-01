import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ));

  static Color selectedColor = Colors.white;
  static Color unSelectedColor = Colors.grey[400]!;
  static Gradient sideMenuColor = LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
    Colors.black,
    Colors.grey[900]!,
    Colors.grey[800]!,
  ]);
}
