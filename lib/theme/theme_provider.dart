import 'package:flutter/material.dart';

import '../pref/share_pref.dart';

class ThemeProvider extends ChangeNotifier{


  // ThemeMode themeMode = Prefs.getThemeMode();
  // // ThemeData _currentTheme = themeMode == ThemeMode.light
  // //     ? ThemeData.light()
  // //     : ThemeData.dark();
  // late ThemeData themeData;
  // if(themeMode == )


  // ThemeData _currentTheme = ThemeData.light();

  ThemeData _currentTheme = Prefs.getThemeMode()==ThemeMode.light? ThemeData.light():ThemeData.dark();

  ThemeData get currentTheme => _currentTheme;

  Future<void> toggleTheme() async {
    _currentTheme = _currentTheme == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    notifyListeners();

    // Save the selected theme mode in shared preferences
   await Prefs.setThemeMode(_currentTheme.brightness == Brightness.light
        ? ThemeMode.light
        : ThemeMode.dark);

  }



  Future<void> initializeTheme() async {
    final themeMode = Prefs.getThemeMode();
    _currentTheme = themeMode == ThemeMode.light
        ? ThemeData.light()
        : ThemeData.dark();
    notifyListeners();
  }
}