import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  bool visible = true;
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
      body: GestureDetector(
        onTap: (){
          print("click");
          setState(() {
            visible = !visible;
          });
        },
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: SffColor.sffMainColor,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                  child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                      leading:  Container(
                        alignment: Alignment.center,
                        height: double.maxFinite,
                        width: 30,
                        color: SffColor.sffMainColor,
                        child: Text("$index",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      trailing: Container(
                          padding: EdgeInsets.only(right: 10),
                          child: const Icon(Icons.arrow_drop_down)),
                      title: Text("FAQs Item")),
                ),
                Visibility(
                    visible: visible,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: SffColor.sffMainColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                    ))
              ],
            );
          }),
      ),
    );
  }
}
