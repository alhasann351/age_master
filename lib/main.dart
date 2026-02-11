import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/controllers/language_controller.dart';
import 'core/localization/app_translations.dart';
import 'core/themes/app_theme.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

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
    final langController = Get.find<LanguageController>();

    return Obx(() {
      final font = langController.fontFamily;

      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'app_name'.tr,
        translations: AppTranslations(),
        locale: langController.locale,
        fallbackLocale: const Locale('en', 'US'),
        theme: AppTheme.light(fontFamily: font),
        darkTheme: AppTheme.dark(fontFamily: font),
        themeMode: ThemeMode.system,
        initialRoute: AppPages.initial,
        getPages: AppRoutes.appRoutes(),
      );
    });
  }
}
