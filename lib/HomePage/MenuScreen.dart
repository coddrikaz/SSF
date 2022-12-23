import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/Settings/Settings.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {

    final String generalSvg = 'assets/svg/wrench.svg';
    final String qrSvg = 'assets/svg/qrcode.svg';
    final String globeSvg = 'assets/svg/globe.svg';
    final String helpSvg = 'assets/svg/question-circle.svg';
    final String logoutSvg = 'assets/svg/sign-out-alt.svg';
    final String settingSvg = 'assets/svg/cogs.svg';

    final Widget general = SvgPicture.asset(
      generalSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    final Widget qrCode = SvgPicture.asset(
      qrSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget globe = SvgPicture.asset(
      globeSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget help = SvgPicture.asset(
      helpSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );
    final Widget logout = SvgPicture.asset(
      logoutSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    final Widget setting = SvgPicture.asset(
      settingSvg,
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
              elevation: 1,
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
                      qrCode,
                      SizedBox(width: 15),
                      Text("Sacn QR Code",
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
              color: SffColor.sffLineColor,
              height: 1,
            ),

            MaterialButton(
              height: 45,
              color: Colors.white,
              elevation: 0,
              onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Row(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      globe,
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

            Container(
              margin: EdgeInsets.only(left: 54),
              color: SffColor.sffLineColor,
              height: 1,
            ),

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
                      globe,
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

            Container(
              margin: EdgeInsets.only(left: 54),
              color: SffColor.sffLineColor,
              height: 1,
            ),
            MaterialButton(
              height: 45,
              color: Colors.white,

              elevation: 0,
              onPressed: () {
                Get.toNamed(RoutesName.faqs);
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

                  Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.grey),


                ],
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),

            Container(
              margin: EdgeInsets.only(left: 54),
              color: SffColor.sffLineColor,
              height: 1,
            ),

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
                      help,
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
            Container(
              margin: EdgeInsets.only(left: 54),
              color: SffColor.sffLineColor,
              height: 1,
            ),
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

                  Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.grey),


                ],
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),

            Container(
              margin: EdgeInsets.only(left: 54),
              color: SffColor.sffLineColor,
              height: 1,
            ),


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
                      logout,
                      SizedBox(width: 15),
                      Text("Delete Account",
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
              color: SffColor.sffLineColor,
              height: 1,
            ),

            MaterialButton(
              height: 45,
              color: Colors.white,
              elevation: 0.4,
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
                      logout,
                      SizedBox(width: 15),
                      Text("Log out",
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

            // Container(
            //   margin: EdgeInsets.only(left: 54),
            //   color: SffColor.sffLineColor,
            //   height: 1,
            // ),

            SizedBox(height: 30),


            MaterialButton(
              height: 45,
              color: Colors.white,
              elevation: 0.4,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Settings()));
              },
              child: Row(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      setting,
                      SizedBox(width: 15),
                      Text("App settings",
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
