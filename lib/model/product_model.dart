import 'package:flutter/material.dart';

class Product{
  final Widget image;
  final String title;
  final String quantity;
  final String price;

  Product({
    required this.image,
    required this.price,
    required this.quantity,
    required this.title
  });
}