import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart' hide Response;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Constants/rest_api.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);
class LoginController extends GetxController {

  final _dio = Dio();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RxList<String> mListStep = <String>[].obs;
  RxList<String> mListInstruction = <String>[].obs;

  getData() async {
    mListStep.assignAll(await _hiveBox.get("Steps"));
    mListInstruction.assignAll(await _hiveBox.get("Instructions"));
  }


   Future<void> getLogin() async {
     bool result = await InternetConnectionChecker().hasConnection;
     if(result){
       if(usernameController.text.isNotEmpty&&passwordController.text.isNotEmpty){
         SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
         var response = await _dio.post(RestUrl.loginUrl, data: json.encode({"username": usernameController.text,"pass" : passwordController.text}));

         debugPrint(response.toString());

         if (response.statusCode == 200) {
           debugPrint("\n------After Login Response------\n");
           if(response.data["message"]=="Success"){
             var result = response.data;
             debugPrint(result.toString());


             SmartDialog.dismiss();
             await Future.delayed(const Duration(seconds: 1));
             SmartDialog.showToast("Login Successfully");
             Get.offAllNamed(RoutesName.homeScreen);
           }
         }
         else{
           SmartDialog.showToast("Please enter correct username and password");
           SmartDialog.dismiss();
         }
       }
     } else{
      SmartDialog.showToast("Please check Internet connection");
      SmartDialog.dismiss();
    }
  }

  reset(){
    usernameController.clear();
    passwordController.clear();
  }

}
