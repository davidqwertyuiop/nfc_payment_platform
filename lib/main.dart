import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/screens/card_screen.dart';
import 'package:nfc_payment_platform/screens/exchange.dart';
import 'package:nfc_payment_platform/screens/home_page.dart';

import 'Login_UI/loginscreen.dart';
import 'app_colors/themes_dart.dart';
import 'screens/settings.dart';
import 'screens/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home':(context) => const HomeScreen(),
        '/card': (context) => const Card(),
        '/settings' : (context) => const Settings(),
        '/transaction': (context) => const TransactionPage(),
        '/exchange': (context) => const ExchangePage(),
        '/cards': (context) => const CardScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme:darkTheme,
      themeMode: ThemeMode.system,
      home: const SignInPage(),
    );
  }
}