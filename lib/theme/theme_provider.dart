import 'package:flutter/material.dart';

import '../pref/share_pref.dart';

class ThemeProvider extends ChangeNotifier{

  // ThemeData _currentTheme = ThemeData.light();

  ThemeData _currentTheme = Prefs.getThemeMode() == ThemeMode.light? ThemeData.light():ThemeData.dark();
  ThemeData get currentTheme => _currentTheme;


  final ThemeMode _themeMode = Prefs.getThemeMode();
  ThemeMode get themeMode => _themeMode;

  Future<void> toggleTheme() async {
    _currentTheme = _currentTheme == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    notifyListeners();

    // Save the selected theme mode in shared preferences
   await Prefs.setThemeMode(_currentTheme.brightness == Brightness.light
        ? ThemeMode.light
        : ThemeMode.dark);
  }

}