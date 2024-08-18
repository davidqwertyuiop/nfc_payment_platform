import 'package:flutter/material.dart';


class TransactionData{
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color transactionColor;

  TransactionData({
    required this.avatar,
    required this.name,
    required this.currentBalance,
    required this.month,
    required this.changePercentageIndicator,
    required this.changePercentage,
    required this.transactionColor
  });
}

List <TransactionData>myTransactions=[
  TransactionData(
  avatar: "assets/images/avatar2.png" ,
  currentBalance: "\$4343",
  changePercentage:"0.21",
  changePercentageIndicator: "up",
  month: "August",
  name: "Damian Daniel",
  transactionColor: Colors.green[100]!,
  ),

  TransactionData(
  avatar: "assets/images/avatar2.png",
  currentBalance: "\$4343",
  changePercentage:"0.21",
  changePercentageIndicator: "up",
  month: "August",
  name: "Damian Joseph",
  transactionColor: Colors.green[100]!,
  ),
  
  TransactionData(
  avatar: "assets/images/avatar2.png",
  currentBalance: "\$4343",
  changePercentage:"0.19",
  changePercentageIndicator: "down",
  month: "August",
  name: "Rema HIM",
  transactionColor: Colors.green[100]!,
  ),

  TransactionData(
  avatar: "assets/images/avatar2.png",
  currentBalance: "\$433",
  changePercentage:"0.23",
  changePercentageIndicator: "up",
  month: "August",
  name: "Brock Lesner",
  transactionColor: Colors.green[100]!,
  ),

  TransactionData(
  avatar:"assets/images/avatar2.png",
  currentBalance: "\$453",
  changePercentage:"0.22",
  changePercentageIndicator: "down",
  month: "August",
  name: "Dummy Text",
  transactionColor: Colors.green[100]!,
  )
];
