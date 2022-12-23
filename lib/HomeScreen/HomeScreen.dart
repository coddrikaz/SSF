import 'dart:async';

import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/HomePage/CalenderScreen.dart';
import 'package:staple_food_fortification/HomePage/DashboardScreen.dart';
import 'package:staple_food_fortification/HomePage/GradesScreen.dart';
import 'package:staple_food_fortification/HomePage/MenuScreen.dart';
import 'package:staple_food_fortification/HomePage/MessagesScreen.dart';
import 'package:staple_food_fortification/HomePage/NotificationsScreen.dart';
import 'package:staple_food_fortification/HomeScreen/homeWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
      builder: (context) =>
          AlertDialog(

            title: Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),

                      color: SffColor.sffBlueColor,
                      child: Text(
                          "kjoig rieoh uhukyuyyuuyfytfu hjfjhvkgugaukaghjfkyfulf",
                          style: TextStyle(
                              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: double.maxFinite,
                      child: Text("Mandatory",
                          style: TextStyle(
                              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      width: double.maxFinite,
                      child: Text(
                          "Are you sure want to logouts  hjfjhvkgng b  hdgjhghdfd bafhdgkfdkuf  hdgkfdlifgleig hfjhdhfgyusdkdufyufu uyf uyfyudtfyudtsfuysdgfkgdsluhds liuhfi dgfuysgd stftd tysvcghftcyfc f sftsdfksfsgfksjf fyugsyfgysagftsagh ffsgyfgtysfyf fweagfuykcfbugeavigcauyegcaeygua eyufbgeygfcbayuegavuybegyuaegbayegyau yaebcuyagbeugyey vfygbauegacabwegbabugbuvygweugvwecabeyvcayuevwygeyvbuyeguy egbuxwyxagfeuygcbfuyage fuygbfeubfua uyegubbefgnkawfnixluhebiwnfxe fwegbxufgueybwfxuwegbfnxibfnxniafng fuyaewxgfyeawbuyfgugaukaghjfkyfulf",
                          style: TextStyle(
                              fontSize: 16)),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: double.maxFinite,
                      child: Text("Mandatory",
                          style: TextStyle(
                              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      width: double.maxFinite,
                      child: Text(
                          "Are you sure want to logouts  hjfjhvkgng b  hdgjhghdfd bafhdgkfdkuf  hdgkfdlifgleig hfjhdhfgyusdkdufyufu uyf uyfyudtfyudtsfuysdgfkgdsluhds liuhfi dgfuysgd stftd tysvcghftcyfc f sftsdfksfsgfksjf fyugsyfgysagftsagh ffsgyfgtysfyf fweagfuykcfbugeavigcauyegcaeygua eyufbgeygfcbayuegavuybegyuaegbayegyau yaebcuyagbeugyey vfygbauegacabwegbabugbuvygweugvwecabeyvcayuevwygeyvbuyeguy egbuxwyxagfeuygcbfuyage fuygbfeubfua uyegubbefgnkawfnixluhebiwnfxe fwegbxufgueybwfxuwegbfnxibfnxniafng fuyaewxgfyeawbuyfgugaukaghjfkyfulf",
                          style: TextStyle(
                              fontSize: 16)),
                    ),
                  ],
                ),
              ),
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

