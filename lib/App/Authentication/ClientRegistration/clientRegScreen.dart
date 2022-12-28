import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

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
                            child: GestureDetector(
                              onTap: () {
                                Dailog();
                              },
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

                                      },
                                      icon: Icon(Icons.arrow_drop_down))
                                  // Icon(Icons.arrow_drop_down),
                                ],
                              ),
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
                                Icon(Icons.arrow_drop_down),
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
                            onPressed: () {},
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

  void Dailog(){
    Get.defaultDialog(
        title: "Success",
        content: Text("Your request has been submitted successfully"),
        textCancel: "Ok",
        cancelTextColor: Colors.white,
        buttonColor: SffColor.sffBlueColor,
        radius: 10,
        onConfirm: () {
          Get.back();
        });
  }


  void showExitPopup() {
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(

            title: Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      color: SffColor.sffBlueColor,
                      child: Text(
                          "Prefiix *",
                          style: TextStyle(
                              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: double.maxFinite,
                      child: Text("Mandatory",
                          style: TextStyle(
                              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      width: double.maxFinite,
                      child: Text(
                          "Are you sure want to logouts  hjfjhvkgng b  hdgjhghdfd bafhdgkfdkuf  hdgkfdlifgleig hfjhdhfgyusdkdufyufu uyf uyfyudtfyudtsfuysdgfkgdsluhds liuhfi dgfuysgd stftd tysvcghftcyfc f sftsdfksfsgfksjf fyugsyfgysagftsagh ffsgyfgtysfyf fweagfuykcfbugeavigcauyegcaeygua eyufbgeygfcbayuegavuybegyuaegbayegyau yaebcuyagbeugyey vfygbauegacabwegbabugbuvygweugvwecabeyvcayuevwygeyvbuyeguy egbuxwyxagfeuygcbfuyage fuygbfeubfua uyegubbefgnkawfnixluhebiwnfxe fwegbxufgueybwfxuwegbfnxibfnxniafng fuyaewxgfyeawbuyfgugaukaghjfkyfulf",
                          style: TextStyle(
                              fontSize: 16)),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: double.maxFinite,
                      child: Text("Mandatory",
                          style: TextStyle(
                              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                      width: double.maxFinite,
                      child: Text(
                          "Are you sure want to logouts  hjfjhvkgng b  hdgjhghdfd bafhdgkfdkuf  hdgkfdlifgleig hfjhdhfgyusdkdufyufu uyf uyfyudtfyudtsfuysdgfkgdsluhds liuhfi dgfuysgd stftd tysvcghftcyfc f sftsdfksfsgfksjf fyugsyfgysagftsagh ffsgyfgtysfyf fweagfuykcfbugeavigcauyegcaeygua eyufbgeygfcbayuegavuybegyuaegbayegyau yaebcuyagbeugyey vfygbauegacabwegbabugbuvygweugvwecabeyvcayuevwygeyvbuyeguy egbuxwyxagfeuygcbfuyage fuygbfeubfua uyegubbefgnkawfnixluhebiwnfxe fwegbxufgueybwfxuwegbfnxibfnxniafng fuyaewxgfyeawbuyfgugaukaghjfkyfulf",
                          style: TextStyle(
                              fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),

          ),
    );
  }
}
