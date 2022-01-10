import 'package:flutter/material.dart';

ThemeData globalTheme()=>ThemeData(
  fontFamily: 'Colibry',
  splashColor: Colors.green,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    primarySwatch: Colors.lightBlue,
  ).copyWith(
    secondary: Colors.white12,
  ),
  textTheme:  TextTheme(
    headline5: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.limeAccent),
    headline6: TextStyle(fontSize: 20.0, fontFamily: 'Lato'),
    bodyText1: TextStyle(fontSize: 18.0, fontFamily: 'Roboto'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans JP'),
  ),
);