import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/Commons/Strings.dart';
import 'package:staple_food_fortification/FaqsScreen/faqsScreen.dart';
import 'package:staple_food_fortification/ForgotScreen/Forgot.dart';
import 'package:staple_food_fortification/HomeScreen/HomeScreen.dart';
import 'package:staple_food_fortification/LoginScreen/login_controller.dart';
import 'package:staple_food_fortification/OtpScreen/Otp.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';
import 'package:staple_food_fortification/Settings/Settings.dart';

final _loginController = Get.find<LoginController>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  // var ic = Icons.remove_red_eye_rounded;
  @override
  Widget build(BuildContext context) {
    final String loginLogo = 'assets/svg/login_logo.svg';
    final String infoLogo = 'assets/svg/info-circle.svg';
    final Widget info = SvgPicture.asset(
      infoLogo,
      semanticsLabel: 'Acme Logo',
      width: 15,
      height: 15,
      color: Colors.white,
    );

    final Widget homeLogo = SvgPicture.asset(
      loginLogo,
      semanticsLabel: 'Acme Logo',
      width: 60,
      height: 60,
      color: SffColor.sffMainColor,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: Text(" "),
        title: Center(
          child: Text(
            "Log in",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Settings()));
              },
              icon: Icon(Icons.settings),
              color: Colors.white),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: homeLogo,
                height: 60,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DefaultTabController(
                      length: 2,
                      child: Container(
                        color: SffColor.sffMainColor,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: TabBar(
                                // overlayColor: MaterialStateColor.resolveWith((states) => Color(0xFF09B20C)),
                                indicatorColor: SffColor.sffBlueColor,
                                tabs: [
                                  Tab(
                                    icon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.short_text,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        Text("STEPS",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  Tab(
                                    icon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        info,
                                        SizedBox(width: 5),
                                        Text("INSTRUCTIONS",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 150,
                              child: TabBarView(
                                children: [
                                  Container(
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                        enableInfiniteScroll: true,
                                        autoPlay: true,
                                        autoPlayInterval:
                                            Duration(milliseconds: 7000),
                                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                                        // autoPlayCurve: Curves.fastOutSlowIn,
                                        // enlargeCenterPage: true,
                                        enlargeFactor: 0.3,
                                        scrollDirection: Axis.horizontal,
                                      ),
                                      items: [1, 2, 3, 4, 5].map((i) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return Container(
                                                width: double.infinity,
                                                alignment: Alignment.center,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 2.0),
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/slider.jpeg"),
                                                      fit: BoxFit.fill),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  '$i Take the Quize Assesmnt ',
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black),
                                                )));
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: SffColor.sffBlueColor,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                      // borderRadius: BorderRadius.circular(3),
                                      // color: SffColor.sffMainColor,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                                        child: SingleChildScrollView(
                                          child: Column(
                                      children: [
                                          Text(
                                            Strings.sInstructions1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black, fontWeight: FontWeight.bold, ),
                                          ),
                                          Divider(),
                                          Text(
                                            Strings.sInstructions2,
                                            textAlign: TextAlign.left,

                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                        Divider(),

                                        Text(
                                            Strings.sInstructions3,
                                          textAlign: TextAlign.left,

                                          style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                        Divider(),

                                        Text(
                                            Strings.sInstructions4,
                                          textAlign: TextAlign.left,

                                          style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.black, fontWeight: FontWeight.bold),
                                          ),

                                      ],
                                    ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(height: 5),

                          Container(
                            margin: EdgeInsets.all(15),
                            child: TextFormField(

                              // style: TextStyle(
                              //   fontSize: 24,
                              //   color: Colors.blue,
                              //   fontWeight: FontWeight.w600,
                              // ),

                              decoration: InputDecoration(
                                focusColor: Colors.blue,
                                //add prefix icon
                                // prefixIcon: Icon(
                                //   Icons.person_outline_rounded,
                                //   color: Colors.grey,
                                // ),

                                // errorText: "Error",

                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(10.0),
                                // ),

                                // focusedBorder: OutlineInputBorder(
                                //   // borderSide:
                                //   // const BorderSide(color: Colors.blue, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(10.0),
                                // ),

                                fillColor: Colors.grey,

                                hintText: "Username",

                                //make hint text
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                ),

                                //create lable
                                // labelText: 'Email/Mobile',
                                // //lable style
                                // labelStyle: TextStyle(
                                //   color: Colors.grey,
                                //   fontSize: 16,
                                //   fontFamily: "verdana_regular",
                                //   fontWeight: FontWeight.w400,
                                // ),
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.all(15),
                            child: TextFormField(

                              // style: TextStyle(
                              //   fontSize: 24,
                              //   color: Colors.blue,
                              //   fontWeight: FontWeight.w600,
                              // ),

                              decoration: InputDecoration(
                                focusColor: Colors.blue,
                                //add prefix icon
                                // prefixIcon: Icon(
                                //   Icons.person_outline_rounded,
                                //   color: Colors.grey,
                                // ),

                                // errorText: "Error",

                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(10.0),
                                // ),

                                // focusedBorder: OutlineInputBorder(
                                //   // borderSide:
                                //   // const BorderSide(color: Colors.blue, width: 1.0),
                                //   // borderRadius: BorderRadius.circular(10.0),
                                // ),

                                fillColor: Colors.grey,

                                hintText: "Username",

                                //make hint text
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                ),

                                //create lable
                                // labelText: 'Email/Mobile',
                                // //lable style
                                // labelStyle: TextStyle(
                                //   color: Colors.grey,
                                //   fontSize: 16,
                                //   fontFamily: "verdana_regular",
                                //   fontWeight: FontWeight.w400,
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "* ",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "The Password must have 5 character",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          MaterialButton(
                            height: 45,
                            color: SffColor.sffBlueColor,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Log in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold, fontSize: 18)),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),

                          SizedBox(height: 20),

                          MaterialButton(
                            height: 45,
                            color: SffColor.sffgeyColor,
                            elevation: 0,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Otp()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Login with OTP",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          SizedBox(height: 15),

                          Center(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Forgot()));
                              },
                              child: Text(
                                "Forget Username or password?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Text(
                              "Dont have an account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 15),

                          MaterialButton(
                            height: 45,
                            color: SffColor.sffgeyColor,
                            elevation: 0,
                            onPressed: () {
                              Get.toNamed(RoutesName.registration);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Create new account",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          SizedBox(height: 10),
                          MaterialButton(
                            height: 45,
                            color: SffColor.sffgeyColor,
                            elevation: 0,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FaqsScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("FAQs",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// void _toggle() {
//   if (_obscureText == true) {
//     ic = Icons.visibility_off;
//   } else {
//     ic = Icons.remove_red_eye_rounded;
//   }
//   setState(() {
//     _obscureText = !_obscureText;
//   });
// }
}
