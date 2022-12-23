import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_bindings.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_screen.dart';
import 'package:staple_food_fortification/App/Authentication/Registration/registration_bindings.dart';
import 'package:staple_food_fortification/App/Authentication/Registration/registration_screen.dart';
import 'package:staple_food_fortification/App/SplashScreen/Bindings/splash_bindings.dart';
import 'package:staple_food_fortification/App/SplashScreen/splash_screen.dart';
import 'package:staple_food_fortification/CourseScreen/courseBindings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

import '../App/Authentication/FaqsScreen/faqsScreen.dart';

class AppRoutes {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: RoutesName.splash,
        page: () => const SplashScreen(),
        binding: SplashBindings(),
      ),

      GetPage(
        name: RoutesName.login,
        page: () => const LoginScreen(),
        binding: LoginBindings(),
      ),

      GetPage(
        name: RoutesName.registration,
        page: () => const RegistrationScreen(),
        binding: RegistrationBindings(),
      ),

      GetPage(
        name: RoutesName.faqs,
        page: () => const FaqsScreen(),
        binding: FaqsBindings(),
      ),

    ];
  }
}
