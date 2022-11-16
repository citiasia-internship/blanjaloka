import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  Color? color;
  String? text;
  double? height;
  double? width;
  double? radius;
  VoidCallback? onPress;
  ButtonDefault(
      {Key? key,
      this.color,
      this.height,
      this.onPress,
      this.text,
      this.width,
      this.radius})
      : super(key: key);

  // ButtonStyle  ({dynamic dynamic, })

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!))),
          onPressed: onPress,
          child: Text(
            text!,
            style: TextStyle(
              color: neutralWhite,
            ),
          )),
    );
  }
}