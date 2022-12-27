import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';



class PrefrencesScreen extends StatefulWidget {
  const PrefrencesScreen({Key? key}) : super(key: key);

  @override
  State<PrefrencesScreen> createState() => _PrefrencesScreenState();
}

class _PrefrencesScreenState extends State<PrefrencesScreen> {
  @override
  Widget build(BuildContext context) {

    final String chatSvg = 'assets/svg/comments.svg';
    final String bellSvg = 'assets/svg/bell.svg';
    final String trashSvg = 'assets/svg/trash.svg';
    final String fileSvg = 'assets/svg/folder.svg';
    final String syncSvg = 'assets/svg/sync-alt.svg';
    final String infoSvg = 'assets/svg/information-circle-sharp.svg';

    final Widget sync = SvgPicture.asset(
      syncSvg,
      semanticsLabel: 'Acme Logo',
      width: 20,
      height: 20,
      color: SffColor.sffBlueColor,
    );

    final Widget trash = SvgPicture.asset(
      trashSvg,
      semanticsLabel: 'Acme Logo',
      width: 20,
      height: 20,
      color: Colors.red,
    );
    final Widget info = SvgPicture.asset(
      infoSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: SffColor.sffDrakBlueColor,
    );

    final Widget chat = SvgPicture.asset(
      chatSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    final Widget bell = SvgPicture.asset(
      bellSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    final Widget file = SvgPicture.asset(
      fileSvg,
      semanticsLabel: 'Acme Logo',
      width: 25,
      height: 25,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(child: Text("Preference", style: TextStyle(color: Colors.white),)),

        actions: [
          Icon(Icons.circle, color: SffColor.sffMainColor),
          SizedBox(width: 15),
        ],
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                height: 70,
                color: Colors.white,
                elevation: 1,
                highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => HomeScreen()));
                },
                child: Container(
                  child: Row(
                    children: [
                      // Container(
                      //   // color: Colors.red,
                      //   // padding:EdgeInsets.all(10),
                      //     child: Icon(Icons.person_pin, size: 50)),
                      // SizedBox(width: 10),
                      Container(
                        // color: Colors.green,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Zakir Husain",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Staple Food Fortificaion"),
                            Text("https://staplefoodfortification.org"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                // ),
              ),
              SizedBox(height: 20),

             Container(
               height: 400,
               // color: Colors.red,
               child: Column(
                 children: [
                   MaterialButton(
                     height: 45,
                     color: Colors.white,
                     elevation: 0,
                     highlightColor: SffColor.sffBlueColor.withOpacity(0.2),

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
                             chat,
                             SizedBox(width: 15),
                             Text("Messages",
                                 style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20)),
                           ],
                         ),
                         Spacer(),
                         Icon(Icons.arrow_forward_ios_outlined,
                             size: 16, color: Colors.grey),
                       ],
                     ),
                     // shape: RoundedRectangleBorder(
                     //   borderRadius: BorderRadius.circular(10.0),
                     // ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 54),
                     color: Colors.black,
                     height: 0.2,
                   ),

                   MaterialButton(
                     height: 45,
                     color: Colors.white,
                     elevation: 0,
                     highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
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
                             bell,
                             SizedBox(width: 15),
                             Text("Notifications",
                                 style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20)),
                           ],
                         ),
                         Spacer(),
                         Icon(Icons.arrow_forward_ios_outlined,
                             size: 16, color: Colors.grey),                  ],
                     ),
                     // shape: RoundedRectangleBorder(
                     //   borderRadius: BorderRadius.circular(10.0),
                     // ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 54),
                     color: Colors.black,
                     height: 0.2,
                   ),

                   MaterialButton(
                     height: 45,
                     color: Colors.white,
                     elevation: 0,
                     highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
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
                             file,
                             SizedBox(width: 15),
                             Text("Shared files",
                                 style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20)),
                           ],
                         ),
                         Spacer(),
                         Icon(Icons.arrow_forward_ios_outlined,
                             size: 16, color: Colors.grey),                  ],
                     ),
                     // shape: RoundedRectangleBorder(
                     //   borderRadius: BorderRadius.circular(10.0),
                     // ),
                   ),

                   Container(
                     margin: EdgeInsets.only(left: 54),
                     color: Colors.black,
                     height: 0.2,
                   ),

                   SizedBox(height: 30),

                   Container(
                     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),

                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(8),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 2,
                           blurRadius: 7,
                           offset: const Offset(0, 3), // changes position of shadow
                         ),
                       ],
                     ),
                     child: Column(
                       children: [
                         Container(

                           // color: Colors.blue,
                           padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 // color: Colors.yellow,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Space", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                     Text("usage", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                     Text("233.02 KB", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                   ],
                                 ),
                               ),
                               Spacer(),

                               IconButton(onPressed: (){}, icon: info),
                               IconButton(onPressed: (){}, icon: trash),

                             ],
                           ),
                         ),

                         Container(
                           margin: EdgeInsets.symmetric(horizontal: 15),
                           color: Colors.black,
                           height: 0.2,
                         ),

                         Container(
                           // color: Colors.blue,
                           padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 // color: Colors.yellow,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Space", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                     Text("usage", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                     Text("233.02 KB", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                   ],
                                 ),
                               ),
                               Spacer(),

                               IconButton(onPressed: (){}, icon: info),
                               IconButton(onPressed: (){}, icon: sync),

                             ],
                           ),
                         ),

                       ],
                     ),
                   )

                 ],
               ),
             ),

              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}
