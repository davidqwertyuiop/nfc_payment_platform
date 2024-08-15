import 'package:flutter/material.dart';

class CardModel{
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
   cardHolderName,
    cardNumber,
    cardColor,
    cvv,
    expDate,
    });
  }


List<CardModel> myCards =[
  CardModel(
    cardHolderName: "Damian Cole",
    cardNumber: "**** **** *** 1234",
    cardColor: Colors.black,
    cvv: "**1",
    expDate: "12/25"
 ),
 CardsModel(
    cardHolderName: "Damian Cole",
    cardNumber: "**** **** *** 0234",
    cardColor: Colors.black,
    cvv: "**2",
    expDate: "11/25"),
];