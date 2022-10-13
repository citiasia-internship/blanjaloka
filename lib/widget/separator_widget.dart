import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final String? text;
  const Separator({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 1,
            thickness: 2,
            indent: 45,
            endIndent: 15,
            color: neutralGrey4,
          ),
        ),
        Text(
          text!,
          // style: textBlack400.copyWith(fontSize: 14.0),
        ),
        Expanded(
          child: Divider(
            height: 1,
            thickness: 2,
            indent: 15,
            endIndent: 45,
            color: neutralGrey4,
          ),
        ),
      ],
    );
  }
}

class Separator2 extends StatelessWidget {
  const Separator2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: neutralGrey4,
    );
  }
}
