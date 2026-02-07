import 'package:age_master/modules/splash/view/splash_view.dart';
import 'package:age_master/routes/app_pages.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static List<GetPage<dynamic>> appRoutes() => [
    GetPage(name: AppPages.initial, page: () => const SplashView()),
  ];
}
