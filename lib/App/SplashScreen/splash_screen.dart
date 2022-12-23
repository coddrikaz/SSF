import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/SplashScreen/Controllers/splash_controller.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';


final _splashScreenController = Get.find<SplashController>();

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    _splashScreenController.check();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SffColor.sffMainColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          child: Image.asset(
            'assets/spalshicon.png',
            height: 300,
            width: 300,
          ),
        ),
      ),


    );
  }
}
