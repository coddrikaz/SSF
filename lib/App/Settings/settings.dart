import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Settings/Widget/general.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {

    final String SpaceSvg = 'assets/svg/tasks.svg';
    final String SyncSvg = 'assets/svg/sync-alt.svg';
    final String sharedSvg = 'assets/svg/folder.svg';
    final String aboutSvg = 'assets/svg/id-card.svg';

    final Widget space = SvgPicture.asset(
      SpaceSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget sync = SvgPicture.asset(
      SyncSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget shared = SvgPicture.asset(
      sharedSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget about = SvgPicture.asset(
      aboutSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "core.settings.appsettings".tr,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
      child: Column(
        children: [
          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GeneralSettings()));
            },
            child: Row(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgView("assets/svg/wrench.svg", 25.0, 25.0, Colors.black),
                    SizedBox(width: 15),
                    TextView("core.settings.general".tr, 20.0, Colors.black, FontWeight.w700),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.grey),

              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),

          Container(
            margin: EdgeInsets.only(left: 54),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),

          MaterialButton(
            height: 45,
            color: Colors.white,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            elevation: 0,
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => HomeScreen()));
            },
            child: Row(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    space,
                    SizedBox(width: 15),
                    Text("core.settings.spaceusage".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.grey),

              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),

          Container(
            margin: EdgeInsets.only(left: 54),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),

          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0.4,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => HomeScreen()));
            },
            child: Row(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   sync,
                    SizedBox(width: 15),
                    Text("core.settings.synchronization".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.grey),

              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),

        ],
      ),
      ),
    );
  }
}
