import 'package:get_storage/get_storage.dart';

import '../constants/storage_keys.dart';

class LanguageService {
  final _box = GetStorage();

  void saveLocale(String locale) {
    _box.write(StorageKeys.locale, locale);
  }

  String get savedLocale => _box.read(StorageKeys.locale) ?? 'en_US';
}
