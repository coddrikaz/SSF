
import 'package:get/get.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

class SplashController extends GetxController {

Future<void> check() async {
  await Future.delayed(Duration(seconds: 3));
  Get.offAllNamed(RoutesName.login);

}

}
