import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/HomePage/CalenderScreen/createEvent.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
 // late CalendarController _controller;
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios, color: SffColor.sffMainColor),
        backgroundColor: SffColor.sffMainColor,
        title: Center(
          child: Text(
            "addon.calendar.calendarevent".tr,
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {
          //     // Navigator.of(context).push(MaterialPageRoute(
          //     //     builder: (context) => Settings()));
          //   },
          //   icon: Icon(Icons.filter_alt_sharp),
          // ),
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.to(()=> CreateEvent());
          setState(() {});
        },
      ),
    );
  }
}
