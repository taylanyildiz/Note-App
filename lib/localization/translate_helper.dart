import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateHelper {
  TranslateHelper._();

  static void updateLocale(Locale locale) {
    Get.updateLocale(locale);
  }
}
