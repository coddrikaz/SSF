import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

import '../../../Constants/rest_api.dart';

class clientRegController extends GetxController{

  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  // final emailController = TextEditingController();
  // final verifyEmailController = TextEditingController();
  // final phoneController = TextEditingController();

  Future<void> getclientReg() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.signUp,
          data: json.encode({
            "id": "1",
            "firstname": "abc",
            "lastname": "xyz",
            "email": "zakir123@gmail.com",
            "username": "zakir123",
            "phone2": "9876543210",
            "password": "zakir",
            "country": "in",
            "city": "delhi",
            "learner_category": "",
            "age": "21",
            "gender": "male",
            "phone": "1234567890",
            "prefix": "Mr.",
            "qualification": "",
            "yearsofexperience": "",
            "organizationindustry": "",
            "designation": "",
            "additionalqualification": "",
            "state": "Delhi"
          }));

      debugPrint(response.toString());

      if (response.statusCode == 200) {
        for(Map<String,dynamic> obj in response.data){
          if(obj['status']=='200'){
            Get.toNamed(RoutesName.login);
            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
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