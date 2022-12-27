import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staple_food_fortification/App/Authentication/FaqsScreen/faqs_controller.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

final _faqsController = Get.find<FaqsController>();

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  void initState() {
    _faqsController.getData();
  }

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text("Gain India - Stapble Food Fortification",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: _faqsController.mQuestion.length,
            itemBuilder: (BuildContext context, int index) {
              return Containlist(_faqsController.mQuestion[index], index,
                  _faqsController.mAnswer[index], _faqsController.mShow[index]);
            });
      }),
    );
  }

  Widget Containlist(String item, int index, String ans, bool show) {
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
              leading: Container(
                alignment: Alignment.center,
                height: double.maxFinite,
                width: 30,
                color: SffColor.sffMainColor,
                child: Text(
                  "$index",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              trailing: GestureDetector(
                onTap: (){
                  if(show){
                    _faqsController.mShow[index]=false;
                  }
                  else{
                    _faqsController.mShow[index]=true;
                  }
                  setState(() {});
                },
                child: Column(
                  children: [
                    Visibility(
                        visible: show == false,
                        child: Container(
                            padding: EdgeInsets.only(right: 10),
                            child: const Icon(Icons.arrow_drop_down))),
                    Visibility(
                        visible: show == true,
                        child: Container(
                            padding: EdgeInsets.only(right: 10),
                            child: const Icon(Icons.arrow_drop_up))),
                  ],
                ),
              ),
              title: Text(item)),
        ),
        Visibility(
          visible: show == true,
          child: Container(
            margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: SffColor.sffMainColor,
                  width: 1.0,
                  style: BorderStyle.solid),
            ),
            child: Html(
              data: ans,
              style: {
                '#': Style(
                  fontSize: FontSize(14),
                  maxLines: 20,
                  textOverflow: TextOverflow.ellipsis,
                ),
              },
            ),
          ),
        )
      ],
    );
  }
}
