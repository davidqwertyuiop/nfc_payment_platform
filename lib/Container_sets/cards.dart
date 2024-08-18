import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/app_colors/app_textstyle.dart';
import 'package:nfc_payment_platform/data/card_data.dart';

class Mycards extends StatelessWidget {
  const Mycards({super.key, required this.card});
  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,

      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
         children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Card Name", style: ApptextStyle.MY_CARD_TITLE,),
                  Text(card.cardHolderName, style: ApptextStyle.LISTTILE_SUBTITLE,),
                ],
              ),
              Text(card.cardNumber, style: ApptextStyle.MY_CARD_SUBTITLE,),
              Row(children: [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text("Exp Date", style: ApptextStyle.MY_CARD_TITLE,),
                  Text(card.expDate, style: ApptextStyle.LISTTILE_SUBTITLE,),
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text("cvv", style: ApptextStyle.MY_CARD_TITLE,),
                  Text(card.cvv, style: ApptextStyle.LISTTILE_SUBTITLE,),
                ],
              ),
              ],
              )
            ],
          ),
          Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/images/nfc_image.png"),
                )],
              ),
         ],

      ),
    );
  }
}