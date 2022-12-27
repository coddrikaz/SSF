import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/ClientRegistration/clientRegController.dart';

class clientRegBindings extends Bindings{
  void dependencies(){
    Get.lazyPut(() => clientRegController(), fenix: true);
  }
}