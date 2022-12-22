import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Notifications", style: TextStyle(color: Colors.white),)),
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
