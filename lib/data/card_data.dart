import 'package:flutter/material.dart';

class CardModel{
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cardColor,
    required this.cvv,
    required this.expDate,
    });
  }


List<CardModel> myCards =[
  CardModel(
    cardHolderName: "Shalom Daniela",
    cardNumber: "34** **** *** 1234",
    cardColor: Colors.black,
    cvv: "**1",
    expDate: "12/25"
 ),
 CardModel(
    cardHolderName: "Damian Cole",
    cardNumber: "32** **** *** 0234",
    cardColor: Colors.grey[900]!,
    cvv: "**2",
    expDate: "11/25"),
  CardModel(
    cardHolderName: "Damian Silas",
    cardNumber: "32** **** *** 0234",
    cardColor: Colors.orange,
    cvv: "**2",
    expDate: "11/25"),
];