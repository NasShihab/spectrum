import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData myThemeData = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.white,
  textTheme: TextTheme(
    //display
    displayLarge: TextStyle(
        fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: TextStyle(
        fontSize: 40.sp, fontWeight: FontWeight.bold, color: Colors.black),
    displaySmall: TextStyle(
        fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.black),
    //body
    bodyLarge: TextStyle(fontSize: 18.sp),
    bodyMedium: TextStyle(fontSize: 16.sp, color: Colors.grey[900]),
    bodySmall: TextStyle(fontSize: 14.sp),
    //title
    titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blue),
      foregroundColor: MaterialStateProperty.all(const Color(0xffffffff)),
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  iconTheme: IconThemeData(
    size: 22.sp,
  ),
);