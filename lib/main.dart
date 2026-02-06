import 'package:age_master/page_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, scrollBehavior: PageScrollBehavior(), title: AppStrings.appName, theme: , darkTheme: , themeMode: , translations: , locale: , fallbackLocale: , getPages: [],);
  }
}
