import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:staple_food_fortification/Commons/databasehelper.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Model/coursercorePojo.dart';
import 'package:staple_food_fortification/Model/courseselectionPojo.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);


class CourseController extends GetxController {

  RxList<CourseSelectionPojo> list_data = <CourseSelectionPojo>[].obs;
  RxList<CourseCorePojo> mCoreList = <CourseCorePojo>[].obs;

  getData() async {
    list_data.assignAll(await DatabaseHelper().getClientList());
    getCore();
  }

  getCore() async {
    List<CourseCorePojo> coreList = [];
    List<dynamic> obj = _hiveBox.get("Course_Core");

    for (var eMap in obj) {

      if( eMap['name'].toString().trim()!=""){
        coreList.add(CourseCorePojo(id: eMap['id'],
            name: eMap['name'],
            visible: eMap['visible'],
            summary: eMap['summary'],
            summaryformat: eMap['summaryformat'],
            section: eMap['section'],
            hiddenbynumsections: eMap['hiddenbynumsections'],
            uservisible: eMap['uservisible'],
            modules: eMap['modules']));
      }


    }
    mCoreList.addAll(coreList);

    print("222 = ${mCoreList.length}");
  }


}