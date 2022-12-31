import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/ForgotScreen/Forgot.dart';
import 'package:staple_food_fortification/App/Authentication/LoginScreen/login_controller.dart';
import 'package:staple_food_fortification/App/Authentication/OtpScreen/loginWithOTP/Otp.dart';
import 'package:staple_food_fortification/Commons/widgetview.dart';
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


  var colosd = SffColor.sffBlueDimColor;

  @override
  void initState() {
    _loginController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        //backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.arrow_back_ios, color: SffColor.sffMainColor),

        title: Center(child: TextView("core.login.login".tr, 20.0, Colors.white, FontWeight.w700)),

        actions: [
          IconButton(
              onPressed: () => Get.toNamed(RoutesName.settingScreen),
              icon: const Icon(Icons.settings, color: Colors.white,)),
        ],
      ),

      body: Obx(() {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 3),
                Image.asset(
                  'assets/images/logo_gain.png',
                  height: 100,
                  width: 200,
                ),
                const SizedBox(height: 8),
                DefaultTabController(
                  length: 2,
                  child:Column(
                    children: [
                      Container(
                        color: SffColor.sffMainColor,
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
                                    'assets/images/steps.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  TextView("core.auth.steps".tr, 14.0, Colors.white, FontWeight.w700)
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

                                  TextView("core.auth.instructions".tr, 14.0, Colors.white, FontWeight.w700)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 210,
                        child: TabBarView(
                          children: [
                            mCarouselSlider(),
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
                                        for (int i = 0; i < _loginController.mListInstruction.length; i++) ...[
                                          Text(
                                            _loginController.mListInstruction.elementAt(i).trim(),
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
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
                          onChanged: (value){
                            if(_loginController.usernameController.text.isNotEmpty&&_loginController.passwordController.text.isNotEmpty){
                              colosd = SffColor.sffBlueColor;
                            } else{
                              colosd = SffColor.sffBlueDimColor;
                            }
                            setState(() {});
                          },
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            focusColor: Colors.blue,
                            fillColor: Colors.grey,
                            hintText: "core.login.username".tr,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: TextFormField(
                          onChanged: (value){
                            if(_loginController.usernameController.text.isNotEmpty&&_loginController.passwordController.text.isNotEmpty){
                              colosd = SffColor.sffBlueColor;
                            } else{
                              colosd = SffColor.sffBlueDimColor;
                            }
                            setState(() {});
                          },
                          cursorColor: Colors.blue,

                          controller: _loginController.passwordController,
                          decoration:  InputDecoration(
                            // focusColor: Colors.blue,
                            // fillColor: Colors.grey,

                            hintText: "core.login.password".tr,

                            //make hint text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        color: colosd,
                        onPressed: () async => await _loginController.getLogin(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextView("core.login.login".tr, 18.0, Colors.white, FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      Center(child: TextView("core.login.or".tr, 18.0,Colors.black, FontWeight.w700)),

                      const SizedBox(height: 20),
                      MaterialButton(
                        height: 45,
                        minWidth: double.infinity,
                        color: SffColor.sffgeyColor,
                        elevation: 0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Otp()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:  TextView("core.login.loginwithotp".tr, 18.0,Colors.black, FontWeight.w700),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Forgot()));
                          },
                          child: Text(
                            "core.login.forgotten".tr,
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
                      Center(
                        child: Text(
                          "core.account".tr,
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
                             Text("core.login.startsignup".tr,
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Text("core.mainmenu.faq".tr,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget mCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds:2000),
        autoPlayAnimationDuration:
        const Duration(milliseconds: 500),
        // autoPlayCurve: Curves.fastOutSlowIn,
        // enlargeCenterPage: true,
        viewportFraction: 1,
      ),
      items:
      _loginController.mListStep.map((val) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: double.infinity,
                alignment: Alignment.center,
                // margin: EdgeInsets.symmetric(
                //     horizontal: 2.0),
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/slider.jpeg"), fit: BoxFit.fill),),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Html(
                      data: val,
                      style: {
                        '#': Style(
                          fontSize: FontSize(16),
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          maxLines: 6,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      },
                    ),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
