import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/screens/exchange.dart';
import 'package:nfc_payment_platform/screens/transaction.dart';

import '../screens/card_screen.dart';
import '../screens/home_page.dart';
import '../screens/settings.dart';
import 'appbar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key, required SingleChildScrollView body,});

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0; // To keep track of the current selected icon

  // List of pages to be displayed based on selected index
  final List<Widget> _pages = [
    HomeScreen(),        // Define this as your home screen
    CardScreen(),        // Define this for your card-related screen
    TransactionPage(), // Define this for your transaction history
    ExchangePage(),    // Define this for currency exchange screen
    Settings(),    // Define this for settings screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index to switch pages
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBars(),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0, color: Colors.black),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0),
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () => _onItemTapped(1),
              icon: const Icon(Icons.credit_card_sharp),
            ),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: const Icon(Icons.playlist_add_check_outlined),
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: const Icon(Icons.currency_exchange_sharp),
            ),
            IconButton(
              onPressed: () => _onItemTapped(4),
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
