
import 'package:flutter/material.dart';
import 'package:test6/pref/share_pref.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = const Locale('en');

  Locale get appLocal => _appLocale ?? const Locale("en");
  fetchLocale() async {
    _appLocale = Locale(Prefs.getLanguageCode());
    return Null;
  }

  void changeLanguage(Locale type) async {

    if (type == const Locale("fa")) {
      _appLocale = const Locale("fa");
      await Prefs.setLanguageCode("fa");
      await Prefs.setCountryCode("IR");
    } else {
      _appLocale = const Locale("en");
      await Prefs.setLanguageCode("en");
      await Prefs.setCountryCode("US");
    }
    notifyListeners();

    // var prefs = await SharedPreferences.getInstance();
    // // if (_appLocale == type) {
    // //   return;
    // // }
    // if (type == const Locale("fa")) {
    //   _appLocale = const Locale("fa");
    //   await prefs.setString('language_code', 'fa');
    //   await prefs.setString('countryCode', '');
    // } else {
    //   _appLocale = const Locale("en");
    //   await prefs.setString('language_code', 'en');
    //   await prefs.setString('countryCode', 'US');
    // }
    // notifyListeners();
  }
}