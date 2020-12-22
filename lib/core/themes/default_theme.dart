import 'package:flutter/material.dart';

class DefaultTheme {
  static ThemeData getThemeData() {
    return ThemeData(
        errorColor: Colors.red,
        primaryIconTheme: IconThemeData(color: Colors.white),
        accentIconTheme: IconThemeData(color: Colors.blue),
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
            button: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.black),
            bodyText1: TextStyle(color: Colors.grey),
            headline1: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red[400]),
            headline3: TextStyle(color: Colors.grey, fontSize: 15),
            headline4: TextStyle(
                fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold)),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
              gapPadding: 10,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))));
  }
}
