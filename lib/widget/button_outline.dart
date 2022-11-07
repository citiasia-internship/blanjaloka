import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonOutLine extends StatelessWidget {
  Color? color;
  Color? colorBorder;
  String? text;
  double? height;
  double? width;
  double? radius;
  VoidCallback? onPress;
  ButtonOutLine(
      {Key? key,
      this.color = const Color(0xffffffff),
      this.colorBorder,
      this.height = 40.0,
      this.onPress,
      this.text,
      this.width = 323.0,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: colorBorder!, width: 1),
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!))),
          onPressed: onPress,
          child: Text(
            text!,
            style: TextStyle(color: colorBorder),
          )),
    );
  }
}