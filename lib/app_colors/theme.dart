import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/app_colors/constants.dart';
ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  fontFamily: "Kanit",
  focusColor: Colors.black,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,
  elevation: 0,
  iconTheme: IconThemeData(color: Colors.black),
  titleTextStyle: TextStyle(color: Colors.black, fontSize: 12)),
  colorScheme: ColorScheme.light(
    surface: kPrimaryColor,
    secondary: const Color.fromARGB(255, 207, 202, 202),
    tertiary:Colors.grey[850]!,
  ),
);