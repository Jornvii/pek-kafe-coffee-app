

import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.orange,
  hintColor: Colors.orange,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.orange,
    secondary: Colors.orange,
  ).copyWith(surface: Colors.white),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.orange,
  hintColor: Colors.orange,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Colors.orangeAccent,
    secondary: Colors.orange,
  ).copyWith(surface: Colors.black),
);