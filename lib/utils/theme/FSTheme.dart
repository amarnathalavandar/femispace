import 'package:flutter/material.dart';

class FSAppTheme{


  FSAppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:TextTheme(
      bodyMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w200,color:Colors.white),
      titleMedium: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500,color:Colors.white),
      headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color:Colors.white),)
  );//
}