import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/english.dart';
import 'package:staple_food_fortification/Constants/hindi.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': mEnglish,
    'hi_IN': mHindi,
  };
}