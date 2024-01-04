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






  static Future<bool?> remove(String key) async => await _prefs?.remove(key);

  // clear all sharePref
  static Future<bool?> clear() async => await _prefs?.clear();




}