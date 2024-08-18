
import 'package:flutter/material.dart';

class AppBars extends StatelessWidget implements PreferredSizeWidget {
  const AppBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(automaticallyImplyLeading: false, elevation: 0,
     actions: [
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(child: Title(color: Colors.grey[900]!, child: Text("NFC Pay", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ))),
          ),
          
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            const ListTile();
          },
        ),
        //
      ],
      leading: Padding(padding: EdgeInsets.all(8.0),
      child:GestureDetector(onTap: (){Navigator.pushNamed(context, "/settings");},
      child: CircleAvatar(radius: 16.0, child: ClipRRect(child: Image.asset("assets/images/avatar.jpg"),borderRadius: BorderRadius.circular(50.0),),),),),
      
      );
  }
  @override
 Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
