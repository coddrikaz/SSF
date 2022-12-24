import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';
import 'package:staple_food_fortification/Routes/route_names.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {

    final String graduateSvg = 'assets/svg/graduation-cap.svg';
    final Widget graduate = SvgPicture.asset(
      graduateSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
       leading : Icon(Icons.arrow_back, color: SffColor.sffMainColor),
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Staple Food Fortification", style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.more_vert),
              color: Colors.white),
        ],
      ),

      body: Container(


        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.zero,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  child: Center(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/home.jpg',
                              height: 100,
                              width: double.maxFinite,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Training Course on", style: TextStyle()),
                          SizedBox(height: 5),
                          Text("Edible Oil Fortification", style: TextStyle(fontSize: 22 , color: SffColor.sffMainColor, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("by", style: TextStyle()),
                          SizedBox(height: 5),
                          Text("Global Alliance for Improved Nutrition (GAIN)", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Text("About the course:", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(Strings.aboutCourse, style: TextStyle()),
                          SizedBox(height: 15),
                          Text("Duration:", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(Strings.duration, style: TextStyle()),
                          SizedBox(height: 15),
                          Text("What you will learn:", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(Strings.learn, style: TextStyle()),
                          SizedBox(height: 15),
                          Text("Course Attractions:", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(Strings.courseA, style: TextStyle()),
                          SizedBox(height: 15),
                          Text("Target Audience:", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(Strings.targetA, style: TextStyle()),

                          SizedBox(height: 30),

                          ElevatedButton(onPressed: (){
                            Get.toNamed(RoutesName.course);
                          },
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>( SffColor.sffMainColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4.0),
                                          side: BorderSide(color: SffColor.sffMainColor)
                                      )
                                  )
                              ),
                              child: Text("Enter This Course")),

                          SizedBox(height: 30),

                          Row(
                            children: [
                              Text("To know more about GAIN click "),
                              Text("here", style: TextStyle(color: SffColor.sffMainColor)),
                            ],
                          ),

                          SizedBox(height: 30),
                        ],
                      ),

                  ),
                ),
              ),

              SizedBox(height: 30),

          Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child:   MaterialButton(
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
                      graduate,
                      SizedBox(width: 15),
                      Text("Available coures",
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
          ),
            ],
          ),
        ),
      ),
    );
  }
}
