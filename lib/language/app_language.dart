
import 'package:flutter/material.dart';
import 'package:test6/pref/share_pref.dart';

class AppLanguage extends ChangeNotifier {

  Locale _appLocale =  Locale(Prefs.getLanguageCode());
  Locale get appLocal => _appLocale;

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
  }
}