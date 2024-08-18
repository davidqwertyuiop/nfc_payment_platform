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
        title: Text("My Cards",style: TextStyle(fontSize: 20, color:kPrimaryColor,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index){
                return Mycards(card: myCards[index]);
                },
                separatorBuilder: (context, index){
                  return SizedBox(height: 20,);
                },
                itemCount: myCards.length,),
            ),
            CircleAvatar(
              radius: 30.0,
              child: Icon(Icons.add, size: 30,color: Colors.blue,
              ),
              ),
              Text("Add Card",style: ApptextStyle.LISTTILE_TITLE,)
            
          ],
        ),
      ),
    );
  }
}