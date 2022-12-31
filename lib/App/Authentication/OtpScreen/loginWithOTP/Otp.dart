import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:staple_food_fortification/App/Authentication/OtpScreen/loginWithOTP/verifyOTP.dart';
import 'package:staple_food_fortification/App/Authentication/OtpScreen/sendOtp.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/rest_api.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text("Gain India - Stapble Food Fortification",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topLeft,
              child: Text("Enter Phone Number",
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            TextFormField(
                controller: phoneController,
                cursorColor: Colors.blue,
                style: TextStyle(
                  // fontSize: 24,
                  color: Colors.black,
                  // fontWeight: FontWeight.w600,
                ),
                onChanged: (value) {
                  setState(() {
                    // userInput.text = value.toString();
                  });
                },
                decoration: InputDecoration(
                  hintText: "Phone",
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(left: 10, right: 5),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                )
            ),

            SizedBox(height: 10),

            MaterialButton(
              height: 45,
              color: SffColor.sffBlueColor,
              onPressed: () async {
                await getReg();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),

            GestureDetector(
              onTap: (){
                Get.toNamed(RoutesName.login);
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                alignment: Alignment.center,
                child: Text(
                  "Login using username & password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getReg() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.otpLogin, data: json.encode({
        "mobile": phoneController.text
      }));

      debugPrint(response.toString());

      if (response.statusCode == 200) {
        for(Map<String,dynamic> obj in response.data){
          if(obj['status']=='200'){
            Get.to(() => VerifyOtp(), arguments: phoneController.text);
            SmartDialog.dismiss();
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
