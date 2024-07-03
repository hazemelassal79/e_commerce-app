import 'package:flutter/material.dart';

class ApplicationThemeManager{
  static Color primaryColor=Color(0xff004182);
  static ThemeData appTheme=ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily:"Poppins",
        fontSize:24,
        fontWeight:FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontFamily:"Poppins",
        fontSize:20,
        fontWeight:FontWeight.w600,
        color: primaryColor,
      ),
      bodyLarge: TextStyle(
        fontFamily:"Poppins",
        fontSize:18,
        fontWeight:FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily:"Poppins",
        fontSize:18,
        fontWeight:FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily:"Poppins",
        fontSize:18,
        fontWeight:FontWeight.w300,
        color: Colors.white,
      ),
    ),
  );
}
