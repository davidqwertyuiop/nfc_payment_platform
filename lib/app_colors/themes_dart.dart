import 'package:flutter/material.dart';
ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  fontFamily: "Kanit",
  focusColor: const Color.fromARGB(255, 121, 117, 97),
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  colorScheme: const ColorScheme.dark(
  surface: Color.fromARGB(255, 30, 28, 28),
  primary:  Color.fromARGB(255, 197, 189, 189),
  secondary: Color.fromARGB(255, 165, 160, 160),
  )
);