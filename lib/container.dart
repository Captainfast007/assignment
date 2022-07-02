import 'dart:math';
import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget{
  Color backgroundcolor=Color(Random().nextInt(0xffffffff));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      color: backgroundcolor,
    );
  }

}