import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData light({required String fontFamily}) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightPrimaryColor,
      ),
      cardColor: AppColors.lightCardColor,
      dividerColor: AppColors.cardBorderColor,
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightPrimaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightPrimaryTextColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.lightPrimaryTextColor,
        ),
      ),
    );
  }

  static ThemeData dark({required String fontFamily}) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkPrimaryColor,
      ),
      cardColor: AppColors.darkCardColor,
      dividerColor: AppColors.cardBorderColor.withOpacity(0.25),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.darkPrimaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.darkPrimaryTextColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.darkPrimaryTextColor,
        ),
      ),
    );
  }
}
