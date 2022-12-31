import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(
          child: Text(
            "addon.calendar.calendarevent".tr,
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.menu),
              color: Colors.white),
        ],
      ),
      body: Container(
        child: Center(
          // child: Text(
          //   "Calender",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 45,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ),
      ),
    );
  }
}
