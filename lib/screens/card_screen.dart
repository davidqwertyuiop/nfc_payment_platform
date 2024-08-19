import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/app_colors/app_textstyle.dart';
import 'package:nfc_payment_platform/app_colors/constants.dart';
import 'package:nfc_payment_platform/data/card_data.dart';

import '../Container_sets/cards.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("My Cards",style: TextStyle(fontSize: 20, color: kPrimaryColor),),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(), // Keeps the scroll behavior smooth
        padding: const EdgeInsets.all(20),
        children: [
          ListView.separated(
            shrinkWrap: true, // Allows the list to take up the necessary space
            physics: NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
            itemBuilder: (context, index) {
              return Mycards(card: myCards[index]);
            },
                separatorBuilder: (context, index){
                  return SizedBox(height: 20,);
                },
            itemCount: myCards.length,
          ),
          SizedBox(height: 20), // Adds spacing after the card list
          CircleAvatar(
            radius: 30.0,
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 10), // Adds spacing before the text
          Center(
            child: Text(
              "Add Card",
              style: ApptextStyle.LISTTILE_TITLE,
            ),
          ),
        ],
      ),
    );
  }
}
