import 'package:flutter/material.dart';

class ThemePack {
  ThemePack({
    required this.name,
    required this.lightTheme,
    required this.darkTheme,
  });

  final String name;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
}
