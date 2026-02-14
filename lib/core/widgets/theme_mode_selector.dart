import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/theme_controller.dart';

class ThemeModeSelector extends StatelessWidget {
  const ThemeModeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ThemeController>();

    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Theme Mode',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),

          RadioListTile<int>(
            value: 0,
            groupValue: controller.selectedIndex,
            onChanged: (v) => controller.setThemeModeIndex(v ?? 0),
            title: const Text('System (Default)'),
          ),
          RadioListTile<int>(
            value: 1,
            groupValue: controller.selectedIndex,
            onChanged: (v) => controller.setThemeModeIndex(v ?? 1),
            title: const Text('Light'),
          ),
          RadioListTile<int>(
            value: 2,
            groupValue: controller.selectedIndex,
            onChanged: (v) => controller.setThemeModeIndex(v ?? 2),
            title: const Text('Dark'),
          ),
        ],
      );
    });
  }
}
