import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:staple_food_fortification/Constants/rest_api.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


class RegistrationController extends GetxController{

  Future<void> getLogin() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if(result){
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.signUp, data: json.encode({"mobile": "8763937244","otp": "12345"}));

      debugPrint(response.toString());

      if (response.statusCode == 200) {
        debugPrint("\n------After Login Response------\n");
        if(response.data["message"]=="Success"){
          var result = response.data;
          debugPrint(result.toString());


          SmartDialog.dismiss();
          await Future.delayed(const Duration(seconds: 1));
          SmartDialog.showToast("Login Successfully");
        }
      }
      else{
        SmartDialog.showToast("Please enter correct username and password");
        SmartDialog.dismiss();
      }
    } else{
      SmartDialog.showToast("Please check Internet connection");
      SmartDialog.dismiss();
    }
  }

}