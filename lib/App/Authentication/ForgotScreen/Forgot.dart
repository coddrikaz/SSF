import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Forget password",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.account_box_outlined, color: SffColor.sffMainColor),
        ],
      ),
      body: Container(
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
            Container(
              // alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(Strings.forgotInfo,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.white24,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          color: SffColor.sffgeyColor,

                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Search by:",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ),

                        )
                      ],
                    ),



                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [

                          Row(children: [
                            const Text("Username"),
                            Spacer(),
                            Radio(
                              fillColor:
                              MaterialStateColor.resolveWith((states) => SffColor.sffBlueColor,),
                              value: 2,
                              groupValue: 1,
                              onChanged: (value) {
                                // setState(() {
                                //   _addadhccontroller.gender_id =
                                //       int.parse(value.toString());
                                //   _addadhccontroller.gender_val = "Female";
                                // });
                              },
                            ),
                            const SizedBox(width: 5),

                          ]),

                          Divider(),

                          Row(children: [
                            const Text("Username"),
                            Spacer(),
                            Radio(
                              fillColor:
                              MaterialStateColor.resolveWith((states) => SffColor.sffBlueColor,),
                              value: 2,
                              groupValue: 1,
                              onChanged: (value) {
                                // setState(() {
                                //   _addadhccontroller.gender_id =
                                //       int.parse(value.toString());
                                //   _addadhccontroller.gender_val = "Female";
                                // });
                              },
                            ),
                            const SizedBox(width: 5),

                          ]),

                          Divider(),
                          TextFormField(
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
                                hintText: "Enter either username or email address",
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(left: 10, right: 5),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 1.0,
                                  ),
                                ),
                              )),
                          SizedBox(height: 10),
                          MaterialButton(
                            height: 45,
                            color: SffColor.sffBlueColor,
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => HomeScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Search",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          SizedBox(height: 10),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
