import 'package:get/get.dart';

import 'bangla.dart';
import 'english.dart';
import 'hindi.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'bn_BD': bnBD,
    'hi_IN': hiIN,
  };
}
