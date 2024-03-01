import 'package:flutter/material.dart';

class GridViewModel{
  final Widget icon;
  final String title;
  final bool container;
  final Color color;

  GridViewModel({
      required this.icon, 
      required this.title,
      required this.color,
      this.container = false
    });
}