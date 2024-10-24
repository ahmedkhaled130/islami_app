import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";

  void changeLanguage(String langCode, BuildContext context) {
    languageCode = langCode;
    context.setLocale(Locale(langCode));
    notifyListeners();
  }
}