import 'package:flutter/material.dart';

import 'appbar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0; // To keep track of the current selected icon

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the appropriate page based on the selected index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/settings');
        break;
      case 2:
        Navigator.pushNamed(context, '/transaction');
        break;
      case 3:
        Navigator.pushNamed(context, '/exchange');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBars(),
      body: Container(), // The body content will be handled by the named routes
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
              icon: const Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: const Icon(Icons.playlist_add_check_outlined),
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: const Icon(Icons.currency_exchange_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
