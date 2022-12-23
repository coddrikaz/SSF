import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
