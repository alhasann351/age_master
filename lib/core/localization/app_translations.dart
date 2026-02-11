import 'package:get/get.dart';

import 'arabic.dart';
import 'bengali.dart';
import 'english.dart';
import 'hindi.dart';
import 'urdu.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'bn_BD': bnBD,
    'hi_IN': hiIN,
    'ar_SA': arSA,
    'ur_PK': urPK,
  };
}
