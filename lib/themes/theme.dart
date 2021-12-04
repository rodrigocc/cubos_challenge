import 'package:flutter/material.dart';

import 'colors.dart';

var theme = ThemeData(
  textTheme: const TextTheme(
    headline1: TextStyle(
        color: ThemeColors.gray1,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontFamily: 'Montserrat'),
    headline2: TextStyle(
        color: ThemeColors.gray2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Montserrat'),
    subtitle1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 10,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    bodyText1: TextStyle(
      color: ThemeColors.gray1,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
    button: TextStyle(
      color: ThemeColors.gray10,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      fontFamily: 'Montserrat',
    ),
  ),
  primarySwatch: Colors.blue,
);
