import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget TextView(String txt, var size, var color_type, var font) {
  return Text(
    txt,
    style: TextStyle(color: color_type, fontSize: size, fontWeight: font),
  );
}

Widget SvgView(var txt, var mWidth,var mheight,var color_type) {
  return SvgPicture.asset(
    txt,
    semanticsLabel: 'Acme Logo',
    width: mWidth,
    height: mheight,
    color: color_type,
  );
}
