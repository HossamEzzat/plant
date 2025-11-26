import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF2D5F3F);
  static const Color backgroundColor = Colors.white;
  static const Color cardBackground = Colors.white;
  static final Color greyBackground = Colors.grey[50]!;

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: TextStyle(
          color: primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: primaryColor,
        secondary: primaryColor,
      ),
    );
  }
}