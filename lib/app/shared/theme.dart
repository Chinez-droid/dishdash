import 'package:dishdash/app/shared/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.backgroundBody,
    brightness: Brightness.light,
  );
}

const textStylew100 = TextStyle(fontWeight: FontWeight.w100);

const textStylew200 = TextStyle(fontWeight: FontWeight.w200);

const textStylew300 = TextStyle(fontWeight: FontWeight.w300);

const textStylew400 = TextStyle(fontWeight: FontWeight.w400);

const textStylew500 = TextStyle(fontWeight: FontWeight.w500);

const textStylew600 = TextStyle(fontWeight: FontWeight.w600);

const textStylew700 = TextStyle(fontWeight: FontWeight.w700);

const textStylew800 = TextStyle(fontWeight: FontWeight.w800);

const textStylew900 = TextStyle(fontWeight: FontWeight.w900);
