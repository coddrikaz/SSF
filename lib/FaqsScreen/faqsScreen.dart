import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:staple_food_fortification/Commons/SffColor.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
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
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(
                  color: SffColor.sffMainColor,
                  width: 2.0,
                  style: BorderStyle.solid),
            ),
            child: ListTile(
                leading:  Container(
                  height: double.maxFinite,
                  width: 50,
                  color: Colors.red,
                  child: Text("$index",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                ),
                trailing: const Icon(Icons.arrow_drop_down
                ),
                title: Text("FAQs Item")),
          );
        }),
    );
  }
}
