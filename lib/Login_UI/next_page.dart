// next_page.dart

import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
        backgroundColor: const Color.fromARGB(255, 40, 60, 56),
      ),
      body: const Center(
        child: Text(
          "You have reached the next page.",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
