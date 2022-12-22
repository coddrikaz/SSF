import 'package:get/get.dart';
import 'package:staple_food_fortification/LoginScreen/login_controller.dart';

class FaqsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
