import 'package:age_master/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/language_service.dart';

class LanguageController extends GetxService {
  final LanguageService _service = LanguageService();
  final RxString selectedLocale = 'en_US'.obs;
  late Locale locale;

  Future<LanguageController> init() async {
    selectedLocale.value = _service.savedLocale;
    final parts = selectedLocale.value.split('_');
    locale = Locale(parts[0], parts[1]);
    return this;
  }

  void changeLanguage(String localeString) {
    selectedLocale.value = localeString;
    final parts = localeString.split('_');
    locale = Locale(parts[0], parts[1]);
    _service.saveLocale(localeString);
    Get.updateLocale(locale);
  }

  String get fontFamily {
    switch (selectedLocale.value) {
      case 'en_US':
        return AppFonts.englishFontName;
      case 'bn_BD':
        return AppFonts.bengaliFontName;
      case 'hi_IN':
        return AppFonts.hindiFontName;
      case 'ar_SA':
        return AppFonts.arabicFontName;
      case 'ur_PK':
        return AppFonts.urduFontName;
      default:
        return AppFonts.englishFontName;
    }
  }
}
