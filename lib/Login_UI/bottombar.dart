import 'package:flutter/material.dart';

import 'appbar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0; // To keep track of the current page

  // Define your pages here
  final List<Widget> _pages = [
    const Center(child: Text('Home Page Content')),
    const Center(child: Text('Settings Page Content')),
    const Center(child: Text('Cards Page Content')),
    const Center(child: Text("Transaction History Page"),)
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
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex, // Use the selected index
              children: _pages, // Add your pages to the IndexedStack
            ),
          ),
          Container(
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
                  onPressed: () => _onItemTapped(1),
                  icon: const Icon(Icons.credit_card),
                ),
                IconButton(
              onPressed: () => _onItemTapped(0),
              icon: const Icon(Icons.home),
            ),
            IconButton(
                  onPressed: () => _onItemTapped(3),
                  icon: const Icon(Icons.currency_exchange_sharp),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(2),
                  icon: const Icon(Icons.playlist_add_check_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
