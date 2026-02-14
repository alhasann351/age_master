import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants/storage_keys.dart';

class ThemeController extends GetxController {
  final GetStorage _box = GetStorage();

  // 0 = system, 1 = light, 2 = dark
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  ThemeMode get themeMode {
    switch (_selectedIndex.value) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      case 0:
      default:
        return ThemeMode.system;
    }
  }

  Future<ThemeController> init() async {
    final saved = _box.read(StorageKeys.themeMode);
    if (saved is int && saved >= 0 && saved <= 2) {
      _selectedIndex.value = saved;
    } else {
      _selectedIndex.value = 0; // default system
    }
    return this;
  }

  void setThemeModeIndex(int index) {
    if (index < 0 || index > 2) return;
    _selectedIndex.value = index;
    _box.write(StorageKeys.themeMode, index);
  }
}
