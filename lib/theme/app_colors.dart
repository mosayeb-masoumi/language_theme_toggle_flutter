import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightColors.primaryColor
        : darkColors.primaryColor;
  }

  static Color secondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightColors.secondaryColor
        : darkColors.secondaryColor;
  }

  // Define your light theme colors
  static  LightColors lightColors = LightColors();

  // Define your dark theme colors
  static  DarkColors darkColors = DarkColors();
}

class LightColors {
  final Color primaryColor = Colors.white;
  final Color secondaryColor = Colors.green;
// Define additional colors for light theme
// ...
}

class DarkColors {
  final Color primaryColor = Colors.black45;
  final Color secondaryColor = Colors.orange;
// Define additional colors for dark theme
// ...
}