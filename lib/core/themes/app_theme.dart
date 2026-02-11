import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light({required String fontFamily}) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: fontFamily,
      textTheme: TextTheme(
        bodySmall: TextStyle(fontFamily: fontFamily, color: Colors.black),
        bodyMedium: TextStyle(fontFamily: fontFamily, color: Colors.black),
        bodyLarge: TextStyle(fontFamily: fontFamily, color: Colors.black),
      ),
    );
  }

  static ThemeData dark({required String fontFamily}) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.teal,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: fontFamily,
      textTheme: TextTheme(
        bodySmall: TextStyle(fontFamily: fontFamily, color: Colors.white),
        bodyMedium: TextStyle(fontFamily: fontFamily, color: Colors.white),
        bodyLarge: TextStyle(fontFamily: fontFamily, color: Colors.white),
      ),
    );
  }
}
