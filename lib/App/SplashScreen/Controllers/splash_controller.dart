import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:staple_food_fortification/Commons/databasehelper.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Constants/rest_api.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);

class SplashController extends GetxController {

  DatabaseHelper databaseHelper = DatabaseHelper();

  Future<void> check() async {
    await couruse_download();
    await couruse_core();
    if(_hiveBox.get("init_download")!=1){
      await dataDownloadFaq();
      await dataDownloadStep();
    }

    String? def_lang=_hiveBox.get("lang");
    if(def_lang=='en'){
      Get.updateLocale(Locale('en', 'US'));
    } else if(def_lang=='hi'){
      Get.updateLocale(Locale('hi', 'IN'));
    } else if(def_lang=='kn'){
      Get.updateLocale(Locale('kn', 'IN'));
    } else if(def_lang=='ta'){
      Get.updateLocale(Locale('ta', 'IN'));
    } else if(def_lang=='te'){
      Get.updateLocale(Locale('te', 'IN'));
    }else{
      Get.updateLocale(Locale('en', 'US'));
    }

    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed(RoutesName.login);
  }

  Future<void> dataDownloadStep() async {
    Map<String, dynamic> formMap = {
      "wstoken": "e37bd0294a0e6a7496f9355f33fc4bb6",
      "wsfunction": "local_custom_api_get_course_slider",
      "moodlewsrestformat": "json",
    };
    try {
      Response response = await Dio().post(RestUrl.mUrl, data: formMap, options: Options(
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
            _hiveBox.put("init_download", 1);
            print(_hiveBox.get("init_download"));
          }
      }
    } catch (e) {}
  }

  Future<void> dataDownloadFaq() async {
    Map<String, dynamic> formMap = {
      "wstoken": "03166992c477ddcae1c235015ba7d14b",
      "wsfunction": "local_faq_get_faq",
      "moodlewsrestformat": "json",
      "lang": "en",
    };
    try {
      Response response = await Dio().post(RestUrl.mUrl, data: formMap, options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ));

     // print("obj $response");
      if (response.statusCode == 200) {
        List<String> QNA_question =[];
        List<String> QNA_answer =[];
        for(var list in response.data){
          QNA_question.add(list["question"]);
          QNA_answer.add(list["answer"]);
        }
        if(QNA_question.length!=0){
          _hiveBox.put("FAQ_question", QNA_question);
          _hiveBox.put("FAQ_answer", QNA_answer);
        }
      }
    } catch (e) {}
  }

  Future<void> couruse_download() async {
    Map<String, dynamic> formMap = {
      "wstoken": "d9599eebafb7cf8e7c4af0940f2e4b68",
      "wsfunction": "local_filter_course_get_courses_section_by_lang",
      "moodlewsrestformat": "json",
      "lang": "en",
    };
    try {
      Response response = await Dio().post(RestUrl.mUrl, data: formMap, options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ));


      if (response.statusCode == 200) {

        var mData = response.data;
        print("obj $mData");
        await databaseHelper.truncateTable("Course_Selection");
        await databaseHelper.saveMasterTable(mData, "Course_Selection");

      }
    } catch (e) {}
  }

  Future<void> couruse_core() async {
    Map<String, dynamic> formMap = {
      "wstoken": "d9599eebafb7cf8e7c4af0940f2e4b68",
      "wsfunction": "core_course_get_contents",
      "moodlewsrestformat": "json",
      "courseid": "3",
    };
    try {
      Response response = await Dio().post(RestUrl.mUrl, data: formMap, options: Options(
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ));


      if (response.statusCode == 200) {

        var mData = response.data;
        print("obj $mData");
        await databaseHelper.truncateTable("Course_Core");
        await databaseHelper.saveMasterTable(mData, "Course_Core");

      }
    } catch (e) {}
  }
}
