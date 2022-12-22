import 'package:get/get.dart';
import 'package:staple_food_fortification/SplashScreen/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
  }
}
