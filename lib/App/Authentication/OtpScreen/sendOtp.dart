import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/rest_api.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

class sendOtp extends StatefulWidget {
  const sendOtp({Key? key}) : super(key: key);

  @override
  State<sendOtp> createState() => _sendOtpState();
}

class _sendOtpState extends State<sendOtp> {
  final otpController = TextEditingController();
  var phoneNum;


  @override
  void initState() {
    super.initState();
    if (Get.arguments != null) {
      phoneNum = Get.arguments;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topLeft,
              child: Text("Enter the otp",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            TextFormField(
                controller: otpController,
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
                  // labelText: "Enter Email",
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
                )),
            SizedBox(height: 10),
            MaterialButton(
              height: 45,
              color: SffColor.sffBlueColor,
              onPressed: () async => await getOtp(),
              // print("clickkkk");
              // onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => HomeScreen()));
              // },
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
          ],
        ),
      ),
    );
  }

  Future<void> getOtp() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.otpVerification,
          data: json.encode({
            "mobile": phoneNum,
            "otp": otpController.text,
          }));

      debugPrint("LLLLLLLLLLLLL ${response.toString()}");
      debugPrint("uuuuuuuuuuu ${phoneNum.toString()}");
      //   var result = response.data;
      //   debugPrint("ooooooootpppppp ${result.toString()}");

      if (response.statusCode == 200) {
        for (Map<String, dynamic> obj in response.data) {
          if (obj['status'] == '200') {
            Get.toNamed(RoutesName.clientRegScreen, arguments: phoneNum);

            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
          } else {
            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
          }
        }
        SmartDialog.dismiss();
        SmartDialog.showToast("Pleaseghdtdgfdghftjfvgh");
      } else {
        SmartDialog.showToast("incorrect otp");
        SmartDialog.dismiss();
      }
    } else {
      SmartDialog.showToast("Please check Internet connection");
      SmartDialog.dismiss();
    }
  }


  Future<void> getOtps() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);
      var response = await Dio().post(RestUrl.otpVerification,
          data: json.encode({
            "mobile": phoneNum,
            "otp": otpController.text,
          }));

      debugPrint("LLLLLLLLLLLLL ${response.toString()}");
      debugPrint("xxxxxxxxxxx ${phoneNum.toString()}");
      //   var result = response.data;
      //   debugPrint("ooooooootpppppp ${result.toString()}");

      if (response.statusCode == 200) {
        for (Map<String, dynamic> obj in response.data) {
          if (obj['status'] == '200') {
            Get.toNamed(RoutesName.clientRegScreen, arguments: phoneNum);

            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
          } else {
            SmartDialog.dismiss();
            await Future.delayed(const Duration(seconds: 1));
            SmartDialog.showToast(obj['message']);
          }
        }
        SmartDialog.dismiss();
        SmartDialog.showToast("Pleaseghdtdgfdghftjfvgh");
      } else {
        SmartDialog.showToast("incorrect otp");
        SmartDialog.dismiss();
      }
    } else {
      SmartDialog.showToast("Please check Internet connection");
      SmartDialog.dismiss();
    }
  }
}
