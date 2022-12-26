import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/FaqsScreen/faqsScreen.dart';
import 'package:staple_food_fortification/App/Authentication/ForgotScreen/Forgot.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_controller.dart';
import 'package:staple_food_fortification/App/Authentication/OtpScreen/Otp.dart';
import 'package:staple_food_fortification/App/HomeScreen/HomeScreen.dart';
import 'package:staple_food_fortification/App/Settings/Settings.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

final _loginController = Get.find<LoginController>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    _loginController.getData();
  }


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
        leading: const Text(" "),
        title: Center(
          child: Text(
              'title',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Settings()));
              },
              icon: const Icon(Icons.settings),
              color: Colors.white),
        ],
      ),
      body: Obx(() {
        return Container(
          margin: const EdgeInsets.only(bottom: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('addon.calendar.confirmeventdelete'.tr.replaceAll('"{{\$a}}"', "Ok")),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: homeLogo,
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                  unselectedLabelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      icon: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/steps.png',
                                            height: 20,
                                            width: double.maxFinite,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text("STEPS",
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
                                          Image.asset(
                                            'assets/info-icon.png',
                                            height: 20,
                                            width: double.maxFinite,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text("INSTRUCTIONS",
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
                                              const Duration(milliseconds: 1000),
                                          autoPlayAnimationDuration:
                                              const Duration(milliseconds: 500),
                                          // autoPlayCurve: Curves.fastOutSlowIn,
                                          // enlargeCenterPage: true,
                                          viewportFraction: 1,
                                        ),
                                        items:
                                            _loginController.mListStep.map((i) {
                                          return Builder(
                                            builder: (BuildContext context) {
                                              return Container(
                                                  width: double.infinity,
                                                  alignment: Alignment.center,
                                                  // margin: EdgeInsets.symmetric(
                                                  //     horizontal: 2.0),
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/slider.jpeg"),
                                                        fit: BoxFit.fill),
                                                  ),
                                                  child: Center(
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                              horizontal: 30),
                                                      child: Text(
                                                        i,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: const TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ));
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
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                              top: 5,
                                              bottom: 5),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                for (int i = 0;
                                                    i <
                                                        _loginController
                                                            .mListInstruction
                                                            .length;
                                                    i++) ...[
                                                  Text(
                                                    _loginController
                                                        .mListInstruction
                                                        .elementAt(i)
                                                        .trim(),
                                                    textAlign: TextAlign.left,
                                                    style: const TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Visibility(
                                                      visible: i <
                                                          _loginController
                                                                  .mListInstruction
                                                                  .length -
                                                              1,
                                                      child: const Divider())
                                                ]
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
                      const SizedBox(height: 5),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _loginController.usernameController,
                                decoration: const InputDecoration(
                                  focusColor: Colors.blue,
                                  fillColor: Colors.grey,
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _loginController.passwordController,
                                decoration: const InputDecoration(
                                  focusColor: Colors.blue,
                                  fillColor: Colors.grey,

                                  hintText: "Password",

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
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  "* ",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  "The Password must have 5 character",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            MaterialButton(
                              height: 45,
                              color: SffColor.sffBlueColor,
                              onPressed: () async {
                                await _loginController.getLogin();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Log in",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  const SizedBox(width: 5),
                                  const Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 20),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Center(
                              child: Text(
                                "OR",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(height: 20),
                            MaterialButton(
                              height: 45,
                              color: SffColor.sffgeyColor,
                              elevation: 0,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Otp()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Login with OTP",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Forgot()));
                                },
                                child: const Text(
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
                            const SizedBox(height: 15),
                            const Center(
                              child: Text(
                                "Dont have an account?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(height: 15),
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
                                  const Text("Create new account",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            const SizedBox(height: 10),
                            MaterialButton(
                              height: 45,
                              color: SffColor.sffgeyColor,
                              elevation: 0,
                              onPressed: () {
                                Get.toNamed(RoutesName.faqs);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("FAQs",
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
        );
      }),
    );
  }
}
