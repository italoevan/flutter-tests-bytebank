import 'package:flutter/material.dart';

abstract class AppThemes {
  static final ThemeData appMainTheme = ThemeData(
      primaryColor: Colors.green[900],
      accentColor: Colors.blueAccent[700],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary));
  static final ThemeData darkTheme = ThemeData.dark();
}
