import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/FaqsScreen/faqs_controller.dart';


class FaqsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqsController(), fenix: true);
  }
}
