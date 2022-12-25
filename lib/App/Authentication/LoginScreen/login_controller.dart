import 'package:flutter/widgets.dart';
import 'package:get/get.dart' hide Response;
import 'package:hive/hive.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);
class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RxList<String> mListStep = <String>[].obs;
  RxList<String> mListInstruction = <String>[].obs;

  getData() async {
    mListStep.assignAll(await _hiveBox.get("Steps"));
    mListInstruction.assignAll(await _hiveBox.get("Instructions"));
  }
}
