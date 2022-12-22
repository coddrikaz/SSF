import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Grades", style: TextStyle(color: Colors.white),)),
    
      ),

      body: Container(
        child: Center(
          // child: Text(
          //   "Dashboard",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 45,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
        ),
      ),
    );
  }
}
