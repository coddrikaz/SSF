import 'package:get/get.dart';
import 'package:staple_food_fortification/FaqsScreen/faqsScreen.dart';
import 'package:staple_food_fortification/FaqsScreen/faqs_bindings.dart';
import 'package:staple_food_fortification/LoginScreen/login_bindings.dart';
import 'package:staple_food_fortification/LoginScreen/login_screen.dart';
import 'package:staple_food_fortification/Registration/registration_bindings.dart';
import 'package:staple_food_fortification/Registration/registration_screen.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/SplashScreen/splash_bindings.dart';
import 'package:staple_food_fortification/SplashScreen/splash_screen.dart';


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
