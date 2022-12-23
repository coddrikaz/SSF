import 'package:get/get.dart';
import 'package:staple_food_fortification/App/HomeScreen/homeScreen_Controller.dart';


class HomeScreeenBindings extends Bindings{
  void dependencies(){
    Get.lazyPut(() => HomeScreenController(), fenix: true);

  }
}