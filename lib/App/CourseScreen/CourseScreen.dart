import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {

    bool visible = true;


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("${Strings.courseAppBar}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
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
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 3,
              ),
              Container(

                child: Column(
                  children: [
                    DefaultTabController(
                      length: 2,
                      child: Container(

                        // color: SffColor.sffMainColor,
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
                                        Text("Contents",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold, color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  Tab(
                                    icon: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text("Grades",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold, color: Colors.black))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 650,
                              child: TabBarView(
                                children: [

                                  Container(
                                    // color: Colors.red,
                                    child: Column(
                                      children: [
                                        Card(
                                          // elevation: 20,
                                          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),

                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0.0),
                                          ),
                                          child: Container(
                                            // color: Colors.green,
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: SffColor.sffBlueColor,
                                                  width: 3,
                                                ),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.file_copy),
                                                SizedBox(width: 5),
                                                Text("All sections", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                                                Spacer(),
                                                Icon(Icons.arrow_drop_down),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // color: Colors.red,
                                          padding: EdgeInsets.symmetric(horizontal: 15),

                                          decoration: BoxDecoration(
                                            color: Colors.white,

                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 7,
                                                offset: Offset(0, 0), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                         child: Column(
                                           children: [
                                             Container(
                                               padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                               child: Text("Note: Please complete all the modules marked as mandatory to get the course certificate.",
                                               style: TextStyle(fontWeight: FontWeight.w900, fontStyle: FontStyle.italic, fontSize: 18)),
                                             ),
                                             Container(
                                               color: Colors.grey,
                                               height: 0.5,
                                             ),

                                             SizedBox(height: 15),

                                             Container(
                                               // color: Colors.red,
                                               child: Row(
                                                 children: [
                                                   Expanded(
                                                     child: Container(
                                                       height: 8,
                                                       // width: 310,
                                                       color: SffColor.sffgeyColor,
                                                       child: Row(
                                                         children: [
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                           Container(color: Colors.blue,height: 10, width: 5),
                                                         ],
                                                       ),
                                                     ),
                                                   ),
                                                   SizedBox(width: 5),
                                                   Container(
                                                     // color: Colors.yellow,
                                                     child: Text("8%", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),),
                                                   )
                                                 ],
                                               ),
                                             ),

                                             SizedBox(height: 20),

                                           ],
                                         ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(color: Colors.white,)

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],

          ),

      ),
    );
  }
}
