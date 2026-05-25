import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF3366FF);
const Color secondaryColor = Color(0xFF00C2BE);
const Color accentColor = Color(0xFFFFB300);
const Color surfaceColor = Color(0xFFF4F7FF);
const Color backgroundColor = Color(0xFFFFFFFF);
const Color errorColor = Color(0xFFEF5350);
const Color errorTextColor = Color(0xFFB71C1C);
const Color loadingGradientStart = Color(0xFF3366FF);
const Color loadingGradientEnd = Color(0xFF7C8CFF);
const Color emptyIconColor = Color(0xFF90A4AE);

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: Colors.white,
    secondary: secondaryColor,
    onSecondary: Colors.white,
    surface: surfaceColor,
    onSurface: Colors.black87,
    background: backgroundColor,
    onBackground: Colors.black87,
    error: Colors.redAccent,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    centerTitle: false,
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: secondaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    ),
  ),
);
