import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Applocalizations {
  static const LocalizationsDelegate<Applocalizations> delegate =
      _AppLocalizationsDelegate();

  final Locale locale;

  Applocalizations(this.locale);

  static Applocalizations of(BuildContext context) {
    return Localizations.of<Applocalizations>(context, Applocalizations);
  }

  Map<String, String> _localizedString;

  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizedString[key];
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<Applocalizations> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return ['en', 'id'].contains(locale.languageCode);
  }

  @override
  Future<Applocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    Applocalizations localizations = new Applocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
