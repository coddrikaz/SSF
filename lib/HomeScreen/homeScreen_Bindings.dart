import 'package:get/get.dart';
import 'package:staple_food_fortification/HomeScreen/homeScreen_Controller.dart';

class HomeScreeenBindings extends Bindings{
  void dependencies(){
    Get.lazyPut(() => HomeScreenController(), fenix: true);

  }
}