import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

import '../../../Constants/rest_api.dart';

class clientRegController extends GetxController{

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final verifyEmailController = TextEditingController();
  final phoneController = TextEditingController();

  Future<void> getReg() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.sendOtp,
          data: json.encode({
            "username": usernameController.text,
            "password": passwordController.text,
            "email": emailController.text,
            "email2": verifyEmailController.text,
            "phone": phoneController.text
          }));

      debugPrint(response.toString());

      if (response.statusCode == 200) {
        for(Map<String,dynamic> obj in response.data){
          if(obj['status']=='200'){
            Get.toNamed(RoutesName.login);
            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast("Otp Sent Successfully");
          }
          else{
            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
          }

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