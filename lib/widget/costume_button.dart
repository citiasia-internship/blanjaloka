import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

Widget costumeButtonFill(String title){
  return Container(
    width: 323,
    height: 48,
    decoration: BoxDecoration(
      color: primaryBlue6,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
      child: Text(title, style: textButton,),
    ),
  );
}

Widget   costumeButtonBorder(String title){
  return Container(
    width: 323,
    height: 48,
    decoration: BoxDecoration(
      color: neutralWhite,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: primaryBlue6,width: 1)
    ),
    child: Center(
      child: Text(title, style: textButton.copyWith(color: primaryBlue6)),
    ),
  );
}