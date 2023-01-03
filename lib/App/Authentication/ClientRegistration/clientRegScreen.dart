import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/ClientRegistration/clientRegController.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

final _clientRegController = Get.find<clientRegController>();

class ClientRegScreen extends StatefulWidget {
  const ClientRegScreen({Key? key}) : super(key: key);

  @override
  State<ClientRegScreen> createState() => _ClientRegScreenState();
}

class _ClientRegScreenState extends State<ClientRegScreen> {
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
        title: Text("First Name & Last Name",
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
                          //FIRTSNAME
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
                                        Text("First name"),
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
                          //SURNAME
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
                                        Text("Surname"),
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
                          //COUNTRY
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Country"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("Country"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //STATE
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("State"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("Delhi"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //CITY TOWN
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
                                        Text("City/town delhi"),
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
                          //PREFIX
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Prefix"),
                                const Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),

                                Spacer(),
                                Text("Mr."),
                                IconButton(
                                    onPressed: () {
                                      showPopup();
                                    },
                                    icon: Icon(Icons.arrow_drop_down))
                                // Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //GENDER
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Gender"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("Male"),
                                IconButton(
                                    onPressed: () {
                                      showAgePopup();
                                    },
                                    icon: Icon(Icons.arrow_drop_down)
                                    // Icon(Icons.arrow_drop_down),

                                    ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //AGE
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Age"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("26-35"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //QUALIFICATION
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Qualification"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("Diploma"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //additional qualification
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
                                        Text("Additional Qualification "),
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
                                                  hintText:
                                                      "Additional Qualification ",
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
                          //year of experience
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Year of Experience"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("4-6"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //Learner Category
                          Container(
                            height: 60,
                            padding: EdgeInsets.only(
                                left: 10, right: 5, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: SffColor.sffBlueColor,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                            ),
                            child: Row(
                              children: [
                                Text("Learner Category"),
                                Text(
                                  "*",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Spacer(),
                                Text("Sate FDA/FSSAI"),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          //Organization/industry
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
                                        Text("Organization/industry"),
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
                                                  hintText:
                                                      "Organization/industry",
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
                          //Designation
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
                                        Text("Designation"),
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
                            onPressed: () async {
                              await _clientRegController.getclientReg();
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

  void showPopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
          height: 320,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Containlist("hkb"),
        ),
      ),
    );
  }

  Widget Containlist(String item) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: Expanded(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              // color: SffColor.sffBlueColor,
              child: Text("Prefiix *",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
            MaterialButton(
              height: 45,
              color: Colors.white,
              minWidth: double.infinity,
              highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
              elevation: 0,
              onPressed: () {
                setState(() {
                  //setState(() {});
                });
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Prof.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
            MaterialButton(
              height: 45,
              color: Colors.white,
              minWidth: double.infinity,
              highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
              elevation: 0,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Dr.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
            MaterialButton(
              height: 45,
              color: Colors.white,
              minWidth: double.infinity,
              highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
              elevation: 0,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Mr.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
            MaterialButton(
              height: 45,
              color: Colors.white,
              minWidth: double.infinity,
              highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
              elevation: 0,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Mrs.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
            MaterialButton(
              height: 45,
              color: Colors.white,
              minWidth: double.infinity,
              highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
              elevation: 0,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeScreen()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Ms.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
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

  void showAgePopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
          height: 320,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: SffColor.sffBlueColor,
                    child: Text("Age *",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  Divider(color: Colors.black.withOpacity(0.2), height: 0.1),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        //setState(() {});
                      });
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("less then 18 years.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("18-25",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("26-35.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("36-45",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("46-55",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  MaterialButton(
                    height: 45,
                    color: Colors.white,
                    minWidth: double.infinity,
                    highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                    elevation: 0,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text("55+",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void Dailog() {
    Get.defaultDialog(
      // title: "Success",
      content: Text("Your request has been submitted successfully"),
      textCancel: "Ok",
      cancelTextColor: Colors.white,
      buttonColor: SffColor.sffBlueColor,
      radius: 10,
      // onConfirm: () {
      //   Get.back();
      // },
    );
  }
}
