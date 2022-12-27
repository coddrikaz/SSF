import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/translations/english.dart';
import 'package:staple_food_fortification/Constants/translations/hindi.dart';
import 'package:staple_food_fortification/Constants/translations/kannada.dart';
import 'package:staple_food_fortification/Constants/translations/tamil.dart';
import 'package:staple_food_fortification/Constants/translations/telugu.dart';

class LanguageTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': mEnglish,
    'hi_IN': mHindi,
    'kn_IN': mKannada,
    'ta_IN': mTamil,
    'te_IN': mTelugu,
  };
}