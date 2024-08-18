import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/app_colors/constants.dart';
import 'package:nfc_payment_platform/screens/exchange.dart';
import 'package:nfc_payment_platform/screens/settings.dart';
import 'package:nfc_payment_platform/screens/transaction.dart';

import 'card_screen.dart';
import 'home_page.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  static const List <Widget> _widgetOption = <Widget>[
    HomeScreen(),
    CardScreen(),
    ExchangePage(),
    TransactionPage(),
    Settings(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex) ,),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items:[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.creditcard_fill), label: "Cards"),
            BottomNavigationBarItem(icon: Icon(Icons.currency_exchange_sharp), label: "Exchange"),
            BottomNavigationBarItem(icon: Icon(Icons.currency_exchange_sharp), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: "Overview"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
          ),
          
    );
  }
}