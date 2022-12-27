import 'package:flutter/material.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';

class ThemeClass{

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: SffColor.sffMainColor,
      )
  );

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      )
  );
}
