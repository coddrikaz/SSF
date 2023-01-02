import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/CourseScreen/courseController.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Model/courseselectionPojo.dart';

final _courseController = Get.find<CourseController>();

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
        )
      ],
    );
  }

  void showSectionPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // color: Colors.blueAccent,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    // height: 200,
                    child: Row(
                      children: [
                        Icon(Icons.close, color: SffColor.sffMainColor),
                        Spacer(),
                        Text("Sections",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900)),
                        Spacer(),
                        GestureDetector(
                          onTap: ()=> Get.back(),
                          child: Icon(Icons.close, color: Colors.white),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: SffColor.sffMainColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
                  Obx(() {
                    return Container(
                      height: 400,
                      width: 300,
                      // padding: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.topLeft,
                      child: ListView.builder(
                          itemCount: _courseController.list_data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Containlist(
                                _courseController.list_data[index]);
                          }),
                    );
                  }),
                ],
              ),
            )),
      ),
    );
  }

  Widget mGrades() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget Containlist(CourseSelectionPojo item) {
    return Column(
      children: [
        MaterialButton(
          minWidth: double.infinity,
          height: 45,
          // color: SffColor.sffBlueColor,
          elevation: 0,
          onPressed: () async {
            Get.back();
            setState(() {});
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.tab_sharp),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(item.name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  Container(
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
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
      ],
    );
  }
}
