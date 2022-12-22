import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Staple Food Fortification", style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Settings()));
              },
              icon: Icon(Icons.menu),
              color: Colors.white),
        ],
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
