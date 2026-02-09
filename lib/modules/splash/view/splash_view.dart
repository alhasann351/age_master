import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/controllers/language_controller.dart';

class SplashView extends GetView<LanguageController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_name'.tr),
        actions: [
          Obx(
            () => DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: controller.selectedLocale.value,
                icon: const Icon(Icons.language, color: Colors.white),
                items: const [
                  DropdownMenuItem(value: 'en_US', child: Text('English')),
                  DropdownMenuItem(value: 'bn_BD', child: Text('বাংলা')),
                  DropdownMenuItem(value: 'hi_IN', child: Text('हिन्दी')),
                ],
                onChanged: (value) {
                  if (value != null) {
                    controller.changeLanguage(value);
                  }
                },
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: Text('welcome'.tr, style: const TextStyle(fontSize: 22)),
      ),
    );
  }
}
