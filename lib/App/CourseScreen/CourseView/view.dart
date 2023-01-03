import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/CourseScreen/webViewStack.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

class ViewVideo extends StatefulWidget {
  const ViewVideo({Key? key}) : super(key: key);

  @override
  State<ViewVideo> createState() => _ViewVideoState();
}

class _ViewVideoState extends State<ViewVideo> {
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: WebViewStack("https://staplefoodfortification.org/mod/scorm/view.php?id=65")),
          ],
        ),
      ),
    );
  }
}
