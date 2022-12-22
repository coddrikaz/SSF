import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Staple Food Fortification", style: TextStyle(color: Colors.white),)),

      ),

      body: Container(
        child: Column(
          children: [

            MaterialButton(
              height: 70,
              color: Colors.white,
              // elevation: 0,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                child: Row(
                  children: [
                    Container(
                      // color: Colors.red,
                        // padding:EdgeInsets.all(10),
                        child: Icon(Icons.person_pin, size: 50)
                    ),
                    SizedBox(width: 10),
                    Container(
                      // color: Colors.green,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Zakir Husain", style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                          Text("Staple Food Fortificaion"),
                          Text("https://staplefoodfortification.org"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),

            SizedBox(height: 20),

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
                      Text("Website",
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
                      general,
                      SizedBox(width: 15),
                      Text("Resources",
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
                      general,
                      SizedBox(width: 15),
                      Text("FAQs",
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
                      Text("Help",
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
                      general,
                      SizedBox(width: 15),
                      Text("Prefrences",
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
                      general,
                      SizedBox(width: 15),
                      Text("Delete Account",
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
                      general,
                      SizedBox(width: 15),
                      Text("Log out",
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
                      general,
                      SizedBox(width: 15),
                      Text("App settings",
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
