import 'package:flutter/material.dart';

import '../../../Constants/SffColor.dart';
import 'package:intl/intl.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  String formattedDate = DateFormat('dd/MM/yyyy, kk:mm a, EEE d MMM').format(DateTime.now());

  bool show = false;
  bool value = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // leading: Icon(Icons.arrow_back_ios, color: SffColor.sffMainColor),
        backgroundColor: SffColor.sffMainColor,
        title: Center(
          child: Text(
            "New Event",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Settings()));
            },
            icon: Icon(Icons.more_vert, color: SffColor.sffMainColor),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                // color: Colors.green,
                child: Row(
                  children: [
                    Text(
                      "Event title",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " *",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    // controller: _regController.usernameController,
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
                      hintText: "Event title",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(right: 5),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    )),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                      color: Colors.black.withOpacity(0.6), height: 0.1)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " *",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Text(
                            formattedDate.toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                      color: Colors.black.withOpacity(0.6), height: 0.1)),
              Container(
                // color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                alignment: Alignment.center,
                // color: Colors.green,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Type of event",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " *",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "User",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                      color: Colors.black.withOpacity(0.6), height: 0.1)),
              Container(
                child: MaterialButton(
                  color: SffColor.sffgreyColor,
                  elevation: 1,
                  highlightColor: SffColor.sffgreyColor.withOpacity(0.2),
                  onPressed: () {
                    // Get.to(() => ViewVideo());
                  },
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      // color: Colors.yellow,
                      // width: double.infinity,
                      child: Row(
                        children: [
                          Visibility(
                            visible: show == false,
                            child: Icon(Icons.arrow_right,
                                color: Colors.black, size: 30),
                          ),
                          Visibility(
                            visible: show == true,
                            child: Icon(Icons.arrow_drop_down,
                                color: Colors.black, size: 30),
                          ),
                          SizedBox(width: 3),
                          Visibility(
                            visible: show == false,
                            child: Text(
                              "Show more...",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                          ),
                          Visibility(
                            visible: show == true,
                            child: Text(
                              "Show less...",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              Visibility(
                visible: show == true,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          // controller: _regController.usernameController,
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
                            isDense: true,
                            // labelText: "Enter Email",
                            // hintText: "Event title",
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(vertical: 50),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(height: 10),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                            color: Colors.black.withOpacity(0.6), height: 0.1)),
                    Container(
                      // color: Colors.red,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          // controller: _regController.usernameController,
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
                            hintText: "Location",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(right: 5),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          )),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                            color: Colors.black.withOpacity(0.6), height: 0.1)),
                    SizedBox(height: 5),
                    Container(
                      color: SffColor.sffgreyColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Duration",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      padding:EdgeInsets.symmetric( horizontal: 10),
                      child: Row(children: [
                        Text(
                          "Without duration",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                        ),
                        Spacer(),
                        Radio(
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => SffColor.sffBlueColor,
                          ),
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {
                          },
                        ),
                        const SizedBox(width: 5),
                      ]),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                            color: Colors.black.withOpacity(0.6), height: 0.1)),

                    Container(
                      // color: Colors.red,
                      padding:EdgeInsets.symmetric( horizontal: 10),
                      child: Column(
                        children: [
                          Row(children: [
                            Text(
                              "Until",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                            ),
                            Spacer(),
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                    (states) => SffColor.sffBlueColor,
                              ),
                              value: 0,
                              groupValue: 1,
                              onChanged: (value) {
                              },
                            ),
                            const SizedBox(width: 5),
                          ]),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            // color: Colors.green,
                            child: Row(
                              children: [
                                Text(
                                  formattedDate.toString(),
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                            color: Colors.black.withOpacity(0.6), height: 0.1)),

                    Container(
                      // color: Colors.red,
                      padding:EdgeInsets.symmetric( horizontal: 10),
                      child: Row(children: [
                        Text(
                          "Duration in minutes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                        ),
                        Spacer(),
                        Radio(
                          fillColor: MaterialStateColor.resolveWith(
                                (states) => SffColor.sffBlueColor,
                          ),
                          value: 0,
                          groupValue: 1,
                          onChanged: (value) {
                          },
                        ),
                        const SizedBox(width: 5),
                      ]),
                    ),

                    SizedBox(height: 5),
                    Container(
                      color: SffColor.sffgreyColor,
                      padding:
                      EdgeInsets.only(left: 10, right: 15),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "Repeat this event",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Checkbox(
                            value: this.value,
                            onChanged: (value) {
                              setState(() {
                                value = true;
                              });
                            },
                          ), //Checkboxx
                        ],
                      ),
                    ),

                    Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Repeat weekly, creating altogether",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500, color: SffColor.sffblackLigtColor),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        // controller: _regController.usernameController,
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
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(right: 5),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          )),
                    ),

                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                            color: Colors.black.withOpacity(0.6), height: 0.1)),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  color: SffColor.sffBlueColor,
                  onPressed: () async {
                    // await _loginController.getLogin();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
