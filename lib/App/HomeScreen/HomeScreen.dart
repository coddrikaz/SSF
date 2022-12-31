import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:staple_food_fortification/App/HomePage/CalenderScreen.dart';
import 'package:staple_food_fortification/App/HomePage/DashboardScreen.dart';
import 'package:staple_food_fortification/App/HomePage/GradesScreen.dart';
import 'package:staple_food_fortification/App/HomePage/MenuScreen/MenuScreen.dart';
import 'package:staple_food_fortification/App/HomePage/MessagesScreen.dart';
import 'package:staple_food_fortification/App/HomePage/NotificationsScreen.dart';
import 'package:staple_food_fortification/App/HomeScreen/homeWidget.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> mandatory_Steps=[
    "Staple Food Fortification: Government Regulations",
    "Packaging and Labelling Regulations",
    "FSSAI Endorsement Process for the Fortified Foods: FoSCoS",
    "Premix Handling, Storage and Distribution",
    "Process of Edible Oil Fortification",
    "Quality Assurance and Quality Control for Fortified Edible Oil"

  ];

  List<String> optional_Steps=[
    "Need and Importance of Staple Food Fortification",
    "Myths and Frequently Asked Questions",
    "Good Manufacturing Practices and Good Hygiene Practices",
    "Sampling and Testing",
    "Role of FFRC, FSSAI, and State FDA in Staple Food Fortification"
  ];

  int pageIndex = 0;

  final pages = [
    const DashboardScreen(),
    const CalenderScreen(),
    const MessagesScreen(),
    const NotificationsScreen(),
    const GradesScreen(),
    const MenuScreen(),
  ];

  @override
  void initState() {
    super.initState();
    // SmartDialog.showLoading(backDismiss: false, clickMaskDismiss: false);

    Timer.run(() {
      Duration(seconds: 5);
      showExitPopup();
    });
  }


  void showExitPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content:  Container(
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
                    child: Text(Strings.popupHeader,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: Text("Mandatory",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    height: 200,
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: ListViewl(mandatory_Steps, mandatory_Steps.length),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 5, horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: Text("Optional",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),

                  Container(
                    height: 200,
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: ListViewl(optional_Steps, optional_Steps.length),
                  ),
                  Divider(
                      color: Colors.black.withOpacity(0.2), height: 0.1),

                  Container(
                    width: double.infinity,
                    child: MaterialButton(
                      height: 45,
                      // color: SffColor.sffBlueColor,
                      elevation: 0,
                      onPressed: () async {
                        Get.back();
                        setState(() {});
                      },
                      child: TextView(
                          "Close", 18.0, Colors.red, FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SffColor.sffMainColor,
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? HomeWidget().meterClick
                    : HomeWidget().meter),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? HomeWidget().calenderClick
                    : HomeWidget().calender),

            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? HomeWidget().chatClick
                    : HomeWidget().chat),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? HomeWidget().bellClick
                  :  HomeWidget().bell
            ),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 4;
                  });
                },
                icon: pageIndex == 4
                    ? HomeWidget().chartClick
                    : HomeWidget().chart),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              icon: pageIndex == 5
                  ? HomeWidget().barsClick
                  : HomeWidget().bars
            ),


          ],
        ),
      ),
    );
  }
}

