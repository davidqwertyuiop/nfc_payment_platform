import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/exchange.dart';

import 'Login_UI/loginscreen.dart';
import 'app_colors/themes_dart.dart';
import 'settings.dart';
import 'transaction.dart';

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
        '/card': (context) => const Card(),
        '/settings' : (context) => const Settings(),
        '/transaction': (context) => const TransactionPage(),
        '/exchange': (context) => const ExchangePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme:darkTheme,
      themeMode: ThemeMode.system,
      home: const SignInPage(),
    );
  }
}