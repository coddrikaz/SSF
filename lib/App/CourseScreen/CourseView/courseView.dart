import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:staple_food_fortification/App/CourseScreen/CourseView/view.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

import '../../../Constants/Strings.dart';

class CourseView extends StatefulWidget {
  const CourseView({Key? key}) : super(key: key);

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Card(
              elevation: 5,

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Done: ",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Text(
                            "View",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SffColor.sffGreenColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: SffColor.sffGreenColor,
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Todo: ",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "complete the activity",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(vertical: 2),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SffColor.sffbackgroundColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: SffColor.sffgeyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              elevation: 5,

              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Attempts",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 26),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Number of attempts allow",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                            Spacer(),
                            Text(
                              "Unlimited",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                          ],
                        )),
                    Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Number of attempts you have made",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                            Spacer(),
                            Text(
                              "0",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                          ],
                        )),
                    Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last syncronisation",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Tuesday, 3 January 2023, 11:31AM",
                              style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "This SCROM package is not downloaded. It will be automatically download when you open it.",
                        style: TextStyle(fontWeight: FontWeight.w700, color: SffColor.sffblackLigtColor),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10),
                    ),
                    Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
                    Container(
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "Preview",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                                    ),
                                    SizedBox(width: 3),
                                    Icon(Icons.search, size: 20,)
                                  ],
                                ),
                                  style: ButtonStyle(
                                    surfaceTintColor: MaterialStateColor.resolveWith((states) => Color(0xFF1E88E5)),
                                    foregroundColor: MaterialStateColor.resolveWith((states) => Color(0xFF1E88E5)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                              side: BorderSide(color: Colors.blue)
                                          )
                                      )
                                  )
                              ),
                            ),

                            SizedBox(width: 8),

                            Expanded(
                              child: MaterialButton(
                                color: Colors.blue,
                                elevation: 1,
                                highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => HomeScreen()));

                                  Get.to(() => ViewVideo());
                                },
                                child: Container(
                                  // width: double.infinity,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Enter",
                                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                                      ),
                                      SizedBox(width: 3),

                                      Icon(Icons.arrow_forward, color: Colors.white,size: 20)
                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
