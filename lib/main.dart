import 'package:age_master/core/binding/initial_binding.dart';
import 'package:age_master/core/localization/app_translations.dart';
import 'package:age_master/core/themes/app_theme.dart';
import 'package:age_master/page_scroll_behavior.dart';
import 'package:age_master/routes/app_pages.dart';
import 'package:age_master/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/constants/app_strings.dart';
import 'core/controllers/language_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await Get.putAsync<LanguageController>(
    () => LanguageController().init(),
    permanent: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.find<LanguageController>();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: PageScrollBehavior(),
      title: AppStrings.appName,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      translations: AppTranslations(),
      locale: languageController.locale,
      fallbackLocale: const Locale('en', 'US'),
      initialBinding: InitialBinding(),
      initialRoute: AppPages.initial,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
