import 'package:flutter/material.dart';

class ListViewModel {
  final String title;
  final Widget leading;
  final Widget trailing;

  ListViewModel({
      required this.title, 
      required this.leading, 
      required this.trailing
    });
}