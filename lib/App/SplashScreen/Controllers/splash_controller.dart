import 'dart:convert';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart' as httpClient;
import 'package:staple_food_fortification/Routes/route_names.dart';

class SplashController extends GetxController {

  Future<void> check() async {
    // await Future.delayed(Duration(seconds: 3));
    // Get.offAllNamed(RoutesName.login);
    await postData();
  }

  Future<void> postData() async {
    final Uri uri = Uri.parse("https://staplefoodfortification.org/webservice/rest/server.php");
    final response = await httpClient.post(
      uri,
      body: {
        "wstoken": "e37bd0294a0e6a7496f9355f33fc4bb6",
        "wsfunction": "local_custom_api_get_course_slider",
        "moodlewsrestformat": "json",
      },
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      encoding: Encoding.getByName('utf-8'),
    );
    var mResponse = jsonDecode(response.body);
    for(var i in mResponse){
      Map<String,dynamic> map = i;
      var step_list = map['Steps'];
      for(var j in  step_list){
        Map<String,dynamic> slist = j;
        var mlist = map['content'];
      }

      var sInstructions = map['Instructions'];
      for(var j in  sInstructions){
        Map<String,dynamic> sInst = j;
      }
    }
  //  print(mResponse);
  }


}
