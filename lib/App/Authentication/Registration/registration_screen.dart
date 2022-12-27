import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: SffColor.sffMainColor,
        title: Text("Gain India - Stapble Food Fortification",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SffColor.sffBlueColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                        // borderRadius: BorderRadius.circular(3),
                        // color: SffColor.sffMainColor,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Text("Username"),
                                        Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      // color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextFormField(
                                                // controller: userInput,
                                                cursorColor: Colors.blue,
                                                style: TextStyle(
                                                  // fontSize: 24,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.w600,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    // userInput.text = value.toString();
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  // labelText: "Enter Email",
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 10, right: 5),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          // Text(userInput.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Text("Password"),
                                        Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      // color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextFormField(
                                                // controller: userInput,
                                                cursorColor: Colors.blue,
                                                style: TextStyle(
                                                  // fontSize: 24,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.w600,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    // userInput.text = value.toString();
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  // labelText: "Enter Email",
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 10, right: 5),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          // Text(userInput.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
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
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Text("Email address"),
                                        Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      // color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextFormField(
                                                // controller: userInput,
                                                cursorColor: Colors.blue,
                                                style: TextStyle(
                                                  // fontSize: 24,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.w600,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    // userInput.text = value.toString();
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  // labelText: "Enter Email",
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 10, right: 5),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          // Text(userInput.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Text("Verify email"),
                                        Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      // color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextFormField(
                                                // controller: userInput,
                                                cursorColor: Colors.blue,
                                                style: TextStyle(
                                                  // fontSize: 24,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.w600,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    // userInput.text = value.toString();
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  // labelText: "Enter Email",
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 10, right: 5),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          // Text(userInput.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    // color: Colors.green,
                                    child: Row(
                                      children: [
                                        Text("Phone"),
                                        Text(
                                          "*",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5),
                                      // color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: TextFormField(
                                                // controller: userInput,
                                                cursorColor: Colors.blue,
                                                style: TextStyle(
                                                  // fontSize: 24,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.w600,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    // userInput.text = value.toString();
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  // labelText: "Enter Email",
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 10, right: 5),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          // Text(userInput.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          MaterialButton(
                            height: 45,
                            color: SffColor.sffBlueColor,
                            onPressed: () {
                              Get.toNamed(RoutesName.clientRegScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Submit",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 20),
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
}
