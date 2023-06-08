import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HeaderHelper {
  static const String rmToken = "8cSlCB7jRxAfouGaTLkk1fxXgZLp8qmV";
  static const String orgToken = "4e522d48a714165da8c5666a925f2269b6512e71";
  static String localeCode = "";

  void initHelper(BuildContext context) {
    if(context.locale.toString() == "ru") {
      localeCode = "RU";
    } else {
      localeCode = "EN";
    }
  }

  Map<String, String> getRmPostHeader() {
    return {
      "Content-Type": "application/json",
      "accept": "application/json; charset=utf-8",
      "x-token": rmToken,
      "x-lng": localeCode,
    };
  }

  Map<String, String> getRmGetHeader() {
    return {
      "accept": "application/json; charset=utf-8",
      "x-token": rmToken,
      "x-lng": localeCode,
    };
  }

  Map<String, String> getOrgPostHeader() {
    return {
      "Content-Type": "application/json",
      "accept": "application/json; charset=utf-8",
    };
  }
}