import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/Routes/route_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          smartManagement: SmartManagement.keepFactory, // Bindings factory reinitialized
          debugShowCheckedModeBanner: false,
          // navigatorObservers: <NavigatorObserver>[observer,FlutterSmartDialog.observer],
          // builder: FlutterSmartDialog.init(),
          title: 'SSF',
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: SffColor.sffMainColor,
            // fontFamily: 'futura',
          ),
          getPages: AppRoutes.getRoutes(),
          initialRoute: RoutesName.splash,
        );
      },
    );
  }
}
