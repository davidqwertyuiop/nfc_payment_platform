
import 'package:flutter/material.dart';
import 'package:nfc_payment_platform/data/transaction_data.dart';

import '../Container_sets/transaction_page.dart';



class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(automaticallyImplyLeading: false,
        title: Center(child: Text("Transaction History",style: TextStyle(color: Colors.grey[950],fontSize: 20,fontWeight: FontWeight.bold) ,))),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              ListView.separated(physics: ClampingScrollPhysics(),itemBuilder: (context, index){
                return Transaction(transaction: myTransactions[index],);}, 
                separatorBuilder: (context, index){
                return SizedBox(width: 10,);
              },shrinkWrap: true, scrollDirection:Axis.vertical, itemCount: myTransactions.length),
            
            
          ],
        ),),
      ),
    );
  }
}