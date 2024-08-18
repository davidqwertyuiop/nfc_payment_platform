
import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/Container_sets/cards.dart';
import 'package:nfc_payment_platform/Login_UI/bottombar.dart';
import 'package:nfc_payment_platform/data/card_data.dart';
 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Bottombar(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: ListView.separated(physics: ClampingScrollPhysics(),itemBuilder: (context, index){
                return Mycards(card: myCards[index],);}, 
                separatorBuilder: (context, index){
                return SizedBox(width: 10,);
              },shrinkWrap: true, scrollDirection:Axis.horizontal, itemCount: myCards.length),
            ),
            
          ],
        ),),
      ),
      );
    
  }
}

