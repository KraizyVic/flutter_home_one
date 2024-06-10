import 'package:flutter/material.dart';
import 'package:homeone/util/constants.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xFFc8c8c8),
    primary: Color(0xFFdbdada),
    secondary: Colors.black,
    tertiary: Colors.black//Color(0xFF867e79),
  )


);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF0c0d0c),
    primary: Color(0xFF272626),
    secondary: Colors.black,
    tertiary: Colors.white//Color(0xFF837e7e),
  )
);
