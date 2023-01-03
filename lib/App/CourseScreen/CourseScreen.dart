
import 'package:balanced_text/balanced_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/CourseScreen/courseController.dart';
import 'package:staple_food_fortification/App/CourseScreen/webViewStack.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Model/coursercorePojo.dart';
import 'package:staple_food_fortification/Model/courseselectionPojo.dart';

final _courseController = Get.find<CourseController>();

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late String url =
      "https://file-examples.com/storage/fe8a7837bf63ad8783d6a5d/2017/04/file_example_MP4_480_1_5MG.mp4";

  @override
  void initState() {
    super.initState();
    _courseController.getData();
  }

  @override
  Widget build(BuildContext context) {
    bool visible = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Center(
            child: TextView(
                Strings.courseAppBar, 18.0, Colors.white, FontWeight.w700)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white))
        ],
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: TabBar(
                    // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFF09B20C)),
                    indicatorColor: SffColor.sffBlueColor,
                    tabs: [
                      Tab(
                        icon: TextView("addon.mod_scorm.contents".tr, 15.0,
                            Colors.black, FontWeight.w700),
                      ),
                      Tab(
                        icon: TextView("core.grades.grades".tr, 15.0,
                            Colors.black, FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: Get.height * 0.8,
                  child: TabBarView(
                    children: [
                      mContents(),
                      mGrades(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mGrades() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget mContents() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => showSectionPopup(),
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            color: Colors.white,
            child: Container(
              // color: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: SffColor.sffBlueColor,
                    width: 3,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.file_copy),
                  SizedBox(width: 5),
                  Text(
                    "All sections",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ),
        Container(
          // color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 15),

          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: const Text(
                    "Note: Please complete all the modules marked as mandatory to get the course certificate.",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 18)),
              ),
              Container(
                color: Colors.grey,
                height: 0.5,
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        Expanded(
          child: Obx(
            () {
              return ListView.builder(
                itemCount: _courseController.mCoreList.length,
                itemBuilder: (BuildContext context, int index) {
                  return courseContent(_courseController.mCoreList[index]);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  void showSectionPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.builder(
              itemCount: _courseController.list_data.length,
              itemBuilder: (BuildContext context, int index) {
                return Containlist(_courseController.list_data[index]);
              }),
        ),
      ),
    );
  }


  Widget courseContent(CourseCorePojo item) {
    return Container(
      // padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextView(item.name, 15.0, Colors.black, FontWeight.w400),
                Container(
                  child:   TextView("Mandatory", 15.0, Colors.black, FontWeight.w700),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: SffColor.sffYelowColor,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: SffColor.sffYelowColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // color: Colors.blue,
                  child: Icon(
                    Icons.book,
                    color: Colors.orange,
                  ),
                ),
                Flexible(child: TextView(item.name, 16.0, Colors.black, FontWeight.w400)),

              ],
            ),
          ),
          Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "To do : View",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: SffColor.sffgeyColor,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: SffColor.sffgeyColor,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  child: Text(
                    "To do: Complete the activity",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 2),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: SffColor.sffgeyColor,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20),
                    color: SffColor.sffgeyColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 0.3,
            color: Colors.grey,
          ),

          Container(
            color: SffColor.sffbackgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:42,vertical: 7),
              child: Text(
                "Quiz : ${item.name}",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
          ),
          // Divider(color: Colors.black, height: 0.3),
          Container(
            color: SffColor.sffbackgroundColor,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // color: Colors.blue,
                  child: Icon(Icons.file_copy_rounded),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Restricted",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SffColor.sffgeyColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      "Food Fortification: Govei",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "To do : Recive grade",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 2),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: SffColor.sffgeyColor,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                            color: SffColor.sffgeyColor,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          child: Text(
                            "To do: Recive a pass grade",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 2),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: SffColor.sffgeyColor,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                            color: SffColor.sffgeyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 0.3,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget Containlist(CourseSelectionPojo item) {
    String name = item.name.trim();
    bool mVisible = true;
    if (name == "") {
      name = "All sections";
      mVisible = false;
    }
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.tab_sharp),
              SizedBox(width: 15),
              Flexible(
                child: Text(name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
            ],
          ),
          Visibility(
            visible: mVisible,
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Container(
                child: Text(
                  "Mandatory",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                margin: EdgeInsets.symmetric(vertical: 2),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: SffColor.sffYelowColor,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20),
                  color: SffColor.sffYelowColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
        ],
      ),
    );
  }
}
