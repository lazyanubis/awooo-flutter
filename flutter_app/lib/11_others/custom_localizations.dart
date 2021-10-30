import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class CustomLocalizations {
  final Locale locale;

  CustomLocalizations(this.locale);

  // static final Map<String, Map<String, String>> _localizedValues = {
  //   "en": {
  //     "title": "Home",
  //     "greet": "Hello",
  //   },
  //   "zh": {
  //     "title": "首页",
  //     "greet": "你好",
  //   },
  // };

  Map<String, String> _localizedValues = {};

  Future<bool> loadJSON() async {
    String jsonString =
        await rootBundle.loadString("lang/${locale.languageCode}.json");
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedValues =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
    return true;
  }

  String t(String key) {
    // Map<String, String>? m = _localizedValues[locale.languageCode];
    // return m == null ? "" : (m[key] ?? "");
    return _localizedValues[key] ?? "";
  }

  static const CustomLocalizationsDelegate delegate =
      CustomLocalizationsDelegate();
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  const CustomLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    // return CustomLocalizations._localizedValues
    //     .containsKey(locale.languageCode);
    return ["en", "zh"].contains(locale.languageCode);
  }

  @override
  Future<CustomLocalizations> load(Locale locale) async {
    // return SynchronousFuture(CustomLocalizations(locale));
    CustomLocalizations localizations = CustomLocalizations(locale);
    await localizations.loadJSON();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CustomLocalizations> old) {
    return false;
  }
}
