import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData themeOfLightMode=ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.deepOrangeAccent,
  
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.deepOrange,
    ),
    color: Colors.white,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    headline4: TextStyle( fontSize: 26, color: Colors.black,fontWeight: FontWeight.w600),
    bodyText1: TextStyle(fontSize:20,fontWeight: FontWeight.w500),
    bodyText2: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
    headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
);

ThemeData themeOfDarkMode=ThemeData(
  scaffoldBackgroundColor: HexColor("333739"),
  primaryColor: Colors.deepOrangeAccent,
  
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.deepOrange,
    ),
    color:  HexColor("333739"),
    elevation: 0,
  ),
  textTheme: const TextTheme(
    headline4: TextStyle( fontSize: 26, color: Colors.white,fontWeight: FontWeight.w600),
    bodyText1: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ,color: Colors.white),
    bodyText2: TextStyle(color: Colors.white ,fontSize: 30,fontWeight: FontWeight.bold,),
    headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
);