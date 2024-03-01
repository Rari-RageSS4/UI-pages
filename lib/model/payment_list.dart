import 'package:flutter/material.dart';

class PaymentList{
  final Widget leading;
  final String title;
  final String subTitle;
  final String deposited;
  final String price;
  final String successful;

  PaymentList({
      required this.leading, 
      required this.title,
      required this.subTitle,
      required this.deposited,
      required this.price,
      required this.successful,
    });
}