import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {

    final String chartSvg = 'assets/svg/chart-bar.svg';
    final Widget chart = SvgPicture.asset(
      chartSvg,
      semanticsLabel: 'Acme Logo',
      width: 100,
      height: 100,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SffColor.sffMainColor,
        title: Center(child: Text("Grades", style: TextStyle(color: Colors.white),)),
    
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              chart,
              SizedBox(height: 20),

              Text(
                "No grades returned",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
