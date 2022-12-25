import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);

class SplashController extends GetxController {

  Future<void> check() async {
    //await datadownload();
    await Future.delayed(Duration(seconds: 3));
    Get.offAllNamed(RoutesName.login);
  }

  datadownload() async {
    Map<String, dynamic> formMap = {
      "wstoken": "e37bd0294a0e6a7496f9355f33fc4bb6",
      "wsfunction": "local_custom_api_get_course_slider",
      "moodlewsrestformat": "json",
    };
    try {
      Response response = await Dio().post("https://staplefoodfortification.org/webservice/rest/server.php", data: formMap, options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ));

      if (response.statusCode == 200) {
          for(var map in response.data){
            List<String> mlist_Steps=[];
            List<String> mlist_Instructions=[];

            for(Map<String,dynamic> j in map['Steps']){
              mlist_Steps.add(j['content']);
            }
            for(var j in map['Instructions']){
              mlist_Instructions.add(j['title']);
            }

            _hiveBox.put("Steps", mlist_Steps);
            _hiveBox.put("Instructions", mlist_Instructions);
            print(_hiveBox.get("Steps"));
          }
      }
    } catch (e) {}
  }

  // Future<void> postData() async {
  //   final Uri uri = Uri.parse("https://staplefoodfortification.org/webservice/rest/server.php");
  //   final response = await httpClient.post(
  //     uri,
  //     body: {
  //       "wstoken": "e37bd0294a0e6a7496f9355f33fc4bb6",
  //       "wsfunction": "local_custom_api_get_course_slider",
  //       "moodlewsrestformat": "json",
  //     },
  //     headers: {
  //       "Content-Type": "application/x-www-form-urlencoded",
  //     },
  //     encoding: Encoding.getByName('utf-8'),
  //   );
  //   var mResponse = jsonDecode(response.body);
  //   for(var i in mResponse){
  //     Map<String,dynamic> map = i;
  //     var step_list = map['Steps'];// await Future.delayed(Duration(seconds: 3));
    // Get.offAllNamed(RoutesName.login);b
  //     for(var j in  step_list){
  //       Map<String,dynamic> slist = j;
  //       var mlist = map['content'];
  //     }
  //
  //     var sInstructions = map['Instructions'];
  //     for(var j in  sInstructions){
  //       Map<String,dynamic> sInst = j;
  //     }
  //   }
  // //  print(mResponse);
  // }

}
