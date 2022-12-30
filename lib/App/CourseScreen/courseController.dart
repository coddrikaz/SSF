import 'package:get/get.dart';
import 'package:staple_food_fortification/Commons/databasehelper.dart';
import 'package:staple_food_fortification/Model/courseselectionPojo.dart';

class CourseController extends GetxController{

  RxList<CourseSelectionPojo> list_data = <CourseSelectionPojo>[].obs;

  getData() async {
    list_data.assignAll(await DatabaseHelper().getClientList());
    print("data =  ${list_data.length}");
  }


}