import 'package:flutter/material.dart';

import 'Login_UI/loginscreen.dart';
import 'app_colors/themes_dart.dart';
import 'maps.dart';
import 'messages.dart';
import 'settings.dart';

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
        '/map': (context) => const MapsPage(),
        '/settings' : (context) => const Settings(),
        '/messages': (context) => const MessagesPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme:darkTheme,
      themeMode: ThemeMode.system,
      home: const SignInPage(),
    );
  }
}