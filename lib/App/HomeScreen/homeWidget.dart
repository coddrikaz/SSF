import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

final String chartSvg = 'assets/svg/chart-bar.svg';
final String meterSvg = 'assets/svg/tachometer-alt.svg';
final String calenderSvg = 'assets/svg/calendar.svg';
final String chatSvg = 'assets/svg/comments.svg';

final String bellSvg = 'assets/svg/bell.svg';
final String barsSvg = 'assets/svg/bars.svg';

class HomeWidget{

  final Widget chart = SvgPicture.asset(
    chartSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget chartClick = SvgPicture.asset(
    chartSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );

  final Widget meter = SvgPicture.asset(
    meterSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget meterClick = SvgPicture.asset(
    meterSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );

  final Widget calender = SvgPicture.asset(
    calenderSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget calenderClick = SvgPicture.asset(
    calenderSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );

  final Widget chat = SvgPicture.asset(
    chatSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget chatClick = SvgPicture.asset(
    chatSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );

  final Widget bell = SvgPicture.asset(
    bellSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget bellClick = SvgPicture.asset(
    bellSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );

  final Widget bars = SvgPicture.asset(
    barsSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: Colors.white,
  );

  final Widget barsClick = SvgPicture.asset(
    barsSvg,
    semanticsLabel: 'Acme Logo',
    width: 25,
    height: 25,
    color: SffColor.sffBlueColor,
  );
}