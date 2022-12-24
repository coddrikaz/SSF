import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_controller.dart';
import 'package:staple_food_fortification/App/CourseScreen/courseController.dart';


class CourseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CourseController(), fenix: true);
  }
}