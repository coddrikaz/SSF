import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:staple_food_fortification/Commons/theme.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  bool isSwitchOn = false;
  bool isSwitchTextOn = false;
  int? selectedValue = 0;

  ThemeMode _themeMode = ThemeMode.dark;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: TextView("core.settings.appsettings".tr, 22.0, Colors.white,
            FontWeight.w400),
      ),
      body: Column(
        children: [
          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () => showBottomSheetLanguage(),
            child: Row(
              children: [
                TextView("addon.badges.language".tr, 20.0, Colors.black,
                    FontWeight.w700),
                Spacer(),
                Row(
                  children: [
                    TextView("type".tr, 16.0, Colors.black, FontWeight.w600),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 90,
            //width:90,
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.39,
                  child:Text(
                    "core.settings.fontsize".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                CupertinoPageScaffold(
                    child: Container(
                        alignment: Alignment.centerRight,
                        //  padding: EdgeInsets.all(8),
                        child: CupertinoSegmentedControl(
                          //padding: EdgeInsets.all(2),
                            borderColor: Colors.grey,
                            selectedColor: Colors.grey,
                            pressedColor: Colors.grey.withOpacity(0.2),
                            groupValue: selectedValue!,
                            children: {
                              0: Container(
                                alignment: Alignment.center,
                                width: 60,
                                child: Text('A',style:TextStyle(fontSize: 12)),
                              ),
                              1: Container(
                                alignment: Alignment.center,
                                width: 60,
                                child: Text('A',style:TextStyle(fontSize: 14),),
                              ),
                              3: Container(
                                alignment: Alignment.center,
                                width: 60,
                                child: Text('A',style: TextStyle(fontSize: 18),),
                              ),
                            },
                            onValueChanged: (val) {
                              selectedValue = val;
                              print(selectedValue);
                              setState(() {});
                            })))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () => themeSheet(),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "core.settings.colorscheme".tr,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "core.settings.colorscheme-light".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  //color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "core.settings.enablerichtexteditor".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.8,
                        margin: EdgeInsets.only(bottom: 12),
                        //  padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "core.settings.enablerichtexteditordescription".tr,
                          style: TextStyle(
                              fontSize: 16,
                              color: SffColor.sffblackLigtColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.07,
                  child: FlutterSwitch(
                    inactiveColor: SffColor.sffgeyCoor,
                    value: isSwitchTextOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchTextOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "core.settings.ioscookies".tr,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "core.settings.ioscookiesdescription".tr,
                    style: TextStyle(
                        color: SffColor.sffblackLightColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, bottom: 10),
                  child: MaterialButton(
                    height: 45,
                    color: SffColor.sffBlueColor,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("core.opensettings".tr,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  //color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "core.settings.debugdisplay".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.8,
                        margin: EdgeInsets.only(bottom: 12),
                        //  padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "core.settings.debugdisplaydescription".tr,
                          style: TextStyle(
                              fontSize: 16,
                              color: SffColor.sffblackLigtColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.07,
                  child: FlutterSwitch(
                    inactiveColor: SffColor.sffgeyCoor,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showBottomSheetLanguage() {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // color: Colors.yellow,
          height: 360,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 100,
            width: 100,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        // color: Colors.blueAccent,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        child: TextView(
                            "Language", 18.0, Colors.black, FontWeight.w800),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          // color: SffColor.sffBlueColor,
                          elevation: 0,
                          onPressed: () async {
                            Get.updateLocale(Locale('en', 'US'));
                            _hiveBox.put("lang", "en");
                            Get.back();
                            setState(() {});
                          },
                          child: TextView(
                              "English", 18.0, Colors.black, FontWeight.w500)),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () async {
                          Get.updateLocale(Locale('hi', 'IN'));
                          _hiveBox.put("lang", "hi");
                          Get.back();
                          setState(() {});
                        },
                        child: TextView(
                            "हिंदी", 18.0, Colors.black, FontWeight.w500),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () {
                          Get.updateLocale(Locale('ta', 'IN'));
                          _hiveBox.put("lang", "ta");
                          Get.back();
                          setState(() {});
                        },
                        child: TextView("தமிழ்", 18.0, Colors.black, FontWeight.w500),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () {
                          Get.updateLocale(Locale('kn', 'IN'));
                          _hiveBox.put("lang", "kn");
                          Get.back();
                          setState(() {});
                        },
                        child: TextView(
                            "ಕನ್ನಡ", 18.0, Colors.black, FontWeight.w500),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          // color: SffColor.sffBlueColor,
                          elevation: 0,
                          onPressed: () {
                            Get.updateLocale(Locale('te', 'IN'));
                            _hiveBox.put("lang", "te");
                            Get.back();
                            setState(() {});
                          },
                          child: TextView("తెలుగు", 18.0, Colors.black, FontWeight.w500)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  color: Colors.white,
                  elevation: 0,
                  onPressed: () => Get.back(),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: TextView("Cancel", 20.0, Colors.red, FontWeight.w800),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
  themeSheet() {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // color: Colors.yellow,
          height: 260,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
            height: 100,
            width: 100,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        // color: Colors.blueAccent,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        child: Text(
                          "core.settings.colorscheme".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ),

                      Container(
                        height: 2,
                        color: SffColor.sffBlueColor,
                        width: double.maxFinite,
                      ),

                      MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          elevation: 0,
                          onPressed: () async {
                            Get.back();
                            ThemeClass.darkTheme;
                            // ThemeData.dark();
                            setState(() {
                              Get.changeTheme(ThemeClass.lightTheme);
                              //setState(() {});
                            });
                          },
                          child: TextView(
                              "core.settings.colorscheme-light".tr, 18.0, Colors.black, FontWeight.w500)),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () async {
                          // Get.updateLocale(Locale('hi', 'IN'));
                          // _hiveBox.put("lang", "hi");
                          // lang="हिंदी";
                          // context.setLocale(const Locale('hi', 'IN'));
                          Get.changeTheme(ThemeClass.darkTheme);
                          setState(() {});
                        },
                        child: TextView(
                            "core.settings.colorscheme-dark".tr, 18.0, Colors.black, FontWeight.w500),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("System default",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward,
                                color: Colors.white, size: 20),
                          ],
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),

                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),


                      // Container(
                      //   height: 10,
                      //   color: Colors.transparent,
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  color: Colors.white,
                  elevation: 0,
                  onPressed: () => Get.back(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextView("Cancel", 20.0, Colors.red, FontWeight.w800),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
