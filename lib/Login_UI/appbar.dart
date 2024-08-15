
import 'package:flutter/material.dart';

import 'search_control.dart';

class AppBars extends StatelessWidget implements PreferredSizeWidget {
  const AppBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(automaticallyImplyLeading: false, elevation: 0,
     actions: [
      IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
        const Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: SearchControl(),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            const ListTile();
          },
        ),
        //
      ],);
  }
  @override
 Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
