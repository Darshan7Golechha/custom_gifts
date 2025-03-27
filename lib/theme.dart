import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/config.dart';

class CustomTheme {
  Flavor currentFlavor = Flavor.dev;

  ThemeData get myTheme {
    return ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      primaryColor: Colors.blue,
      hintColor: Colors.grey,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  double borderRadius = 15;
  double listImageSize = 75;
  double minVerticalPadding = 15;
  double margin = 20;
  List<Color> backgroundGradientColors = [
    const Color.fromRGBO(228, 240, 252, 1),
    const Color.fromRGBO(227, 220, 252, 1),
    const Color.fromRGBO(231, 207, 239, 1),
    const Color.fromRGBO(234, 204, 220, 1),
  ];
}
