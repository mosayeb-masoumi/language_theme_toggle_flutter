import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {

  static SharedPreferences? _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  // get && set string language_code
  static Future<bool?> setLanguageCode(String value) async => await _prefs?.setString("LanguageCode", value);
  static String getLanguageCode() => _prefs?.getString("LanguageCode") ?? "en";   // default value is "en"


  // get && set string country_code
  static Future<bool?> setCountryCode(String value) async => await _prefs?.setString("CountryCode", value);
  static String getCountryCode() => _prefs?.getString("CountryCode") ?? "US";   // default value is "US"


  // // get && set int theme_mode
  // static Future<bool?> setThemeMode(ThemeMode themeMode) async => await _prefs?.setInt("ThemeMode", themeMode.index);
  // static int getThemeMode() => _prefs?.getInt("ThemeMode") ?? ThemeMode.system.index;   // default value is "US"
  //
  //

  static Future<bool> setThemeMode(ThemeMode themeMode) async =>
      await _prefs!.setInt("ThemeMode", themeMode.index);
  static ThemeMode getThemeMode() {
    final int? themeModeIndex = _prefs!.getInt("ThemeMode");
    return themeModeIndex != null && themeModeIndex < ThemeMode.values.length
        ? ThemeMode.values[themeModeIndex]
        : ThemeMode.system;
  }


  //
  // static Future<void> setThemeMode(ThemeMode themeMode) async =>
  //     await _prefs!.setInt("ThemeMode", themeMode.index);
  //
  // static Future<ThemeMode> getThemeMode() async {
  //   final int? themeModeIndex = _prefs!.getInt("ThemeMode");
  //   if (themeModeIndex != null && themeModeIndex < ThemeMode.values.length) {
  //     return ThemeMode.values[themeModeIndex];
  //   } else {
  //     return ThemeMode.system;
  //   }
  // }

}