import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/app_colors/app_textstyle.dart';
import 'package:nfc_payment_platform/data/transaction_data.dart';


class Transaction extends StatelessWidget {
  const Transaction({super.key, required this.transaction});
  final TransactionData transaction;
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(10),
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Row(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: transaction.transactionColor,
              ),
              child: Image.asset(transaction.avatar),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(transaction.name, style: ApptextStyle.LISTTILE_TITLE,),
                Text(transaction.month, style: ApptextStyle.LISTTILE_SUBTITLE,),
              ],
            )
            ],
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(transaction.currentBalance, style: ApptextStyle.LISTTILE_TITLE,),
            Row(
              children: [
                transaction.changePercentageIndicator == "up"?Icon(FontAwesomeIcons.levelUpAlt,
                color: Colors.green,
                size: 10,): Icon(FontAwesomeIcons.levelDownAlt, size: 10, color: Colors.red,),
                SizedBox(width: 5,),
                Text(transaction.changePercentage,
                style: ApptextStyle.LISTTILE_SUBTITLE,)

              ],
            )
          ],
            )
          ],
        )
        ],
        
      ),
      
    );
  }
}