import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Gain India - Stapble Food Fortification",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.topLeft,
              child: Text("Enter Phone Number",
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
            ),
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
                )
            ),

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
                  Text("Submit",
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

          ],
        ),
      ),
    );
  }
}
