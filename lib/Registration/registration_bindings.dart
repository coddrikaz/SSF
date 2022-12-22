import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:staple_food_fortification/LoginScreen/login_controller.dart';
import 'package:staple_food_fortification/Registration/registration_controller.dart';

class RegistrationBindings extends Bindings{
  void dependencies(){
    Get.lazyPut(() => RegistrationController(), fenix: true);
  }
}