import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/CourseScreen/courseController.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

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
        title: Center(child: TextView(Strings.courseAppBar, 18.0, Colors.white, FontWeight.w700)),

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
        Card(
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

  Widget mGrades() {
    return Container(
      color: Colors.blue,
    );
  }
}
