import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:staple_food_fortification/Commons/theme.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:staple_food_fortification/Commons/language.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/Routes/route_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kDefaultHiveBox);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          smartManagement: SmartManagement.keepFactory,
          // Bindings factory reinitialized
          debugShowCheckedModeBanner: false,
          locale: Get.deviceLocale,
          translations: LanguageTranslations(),
          title: 'SSF',
          theme: ThemeClass.lightTheme,
          darkTheme: ThemeClass.darkTheme,
          themeMode: ThemeMode.system,
          navigatorObservers: [FlutterSmartDialog.observer],
          builder: FlutterSmartDialog.init(),
          getPages: AppRoutes.getRoutes(),
          initialRoute: RoutesName.splash,
        );
      },
    );
  }
}
