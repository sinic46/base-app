import 'package:base_app/models/theme_pack.dart';
import 'package:flutter/material.dart';

Map<String, ThemePack> themeMap = {
  'Default': ThemePack(
    name: 'Default',
    lightTheme: ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      primaryColor: Colors.orange,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.blue, backgroundColor: Colors.red),
      ),
    ),
    darkTheme: ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        secondary: Colors.orange,
        brightness: Brightness.dark,
      ),
      //brightness: Brightness.dark
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.orange, backgroundColor: Colors.black),
      ),
    ),
  ),
  'Alternate1': ThemePack(
    name: 'Alternate1',
    lightTheme: ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    ),
    darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark),
  ),
};





  // final Map<String, ThemeData> themes = {
  //   'default': ThemeData(
      
  //     colorscheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
  //     // Define the default brightness and colors.
  //     brightness: Brightness.dark,
  //     primaryColor: Colors.lightBlue[800],
  //   ),
    //'default dark': defaultTheme.
  // };
