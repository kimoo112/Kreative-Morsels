// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant/color.dart';

class AppTheme {
  static bool isDark = false;

  static ThemeData LightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: cwhite,
      secondary: corange,
      brightness: Brightness.light,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: cdark,
      secondary: corange,
      brightness: Brightness.dark,
    ),
  );
}
