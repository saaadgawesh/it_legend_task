import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class Apptextthem {
  static ThemeData appTextthem = ThemeData(
    fontFamily: 'Tajawal',
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Appcolor.bgunselectedicon,
      ),
      titleMedium: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
