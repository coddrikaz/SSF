import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';
import 'package:staple_food_fortification/HomePage/CalenderScreen.dart';
import 'package:staple_food_fortification/HomePage/DashboardScreen.dart';
import 'package:staple_food_fortification/HomePage/GradesScreen.dart';
import 'package:staple_food_fortification/HomePage/MenuScreen.dart';
import 'package:staple_food_fortification/HomePage/MessagesScreen.dart';
import 'package:staple_food_fortification/HomePage/NotificationsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIndex = 0;

  final pages = [
    const DashboardScreen(),
    const CalenderScreen(),
    const MessagesScreen(),
    const NotificationsScreen(),
    const GradesScreen(),
    const MenuScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SffColor.sffMainColor,

      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.dashboard_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.calendar_month_rounded,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.edit_calendar,
                color: Colors.white,
                size: 25,
              ),
            ),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                Icons.messenger,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.messenger_outline_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                Icons.grade,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.grade_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),

            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              icon: pageIndex == 5
                  ? const Icon(
                Icons.menu_open,
                color: Colors.white,
                size: 25,
              )
                  : const Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        title: Text("Staple Food Fortification", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: const Color(0xffcb7c6a),
        child: Center(
          child: Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff69cc84),
      child: Center(
        child: Text(
          "Choose Date",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffbd5f83),
      child: Center(
        child: Text(
          "Chat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff7da3fc),
      child: Center(
        child: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffcc8484),
      child: Center(
        child: Text(
          "Menu Options",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

