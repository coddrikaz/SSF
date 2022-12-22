import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {

    final String generalSvg = 'assets/svg/wrench.svg';
    final String SpaceSvg = 'assets/svg/tasks.svg';
    final String SyncSvg = 'assets/svg/sync-alt.svg';
    final String sharedSvg = 'assets/svg/folder.svg';
    final String aboutSvg = 'assets/svg/id-card.svg';

    final Widget general = SvgPicture.asset(
      generalSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

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
      ),
      body: Container(
      child: Column(
        children: [
          MaterialButton(
            height: 45,
            color: Colors.white,
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
                    general,
                    SizedBox(width: 15),
                    Text("General",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_right),

              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),

          Divider(),

          MaterialButton(
            height: 45,
            color: Colors.white,
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
                    Text("Space usage",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_right),

              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),

          Divider(),

          MaterialButton(
            height: 45,
            color: Colors.white,
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
                   sync,
                    SizedBox(width: 15),
                    Text("Synchronisaion",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                Spacer(),

                Icon(Icons.arrow_right),

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
