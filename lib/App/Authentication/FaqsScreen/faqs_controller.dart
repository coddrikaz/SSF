import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);
class FaqsController extends GetxController{

  RxList<String> mQuestion = <String>[].obs;
  RxList<String> mAnswer = <String>[].obs;
  RxList<bool> mShow = <bool>[].obs;

  getData() async {
    mQuestion.assignAll(await _hiveBox.get("FAQ_question"));
    mAnswer.assignAll(await _hiveBox.get("FAQ_answer"));
    mShow.assignAll(List.filled(mAnswer.length, false));
  }

}