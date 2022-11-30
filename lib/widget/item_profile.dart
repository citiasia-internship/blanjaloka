import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemProfile extends StatelessWidget {
  ItemProfile({Key? key, this.icon, this.label, this.color, this.colorArrow})
      : super(key: key);
  String? label;
  Icon? icon;
  Color? color;
  Color? colorArrow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon!,
            const SizedBox(
              width: 10.0,
            ),
            Text(
              label!,
              style: bigTitle.copyWith(
                fontSize: 14.0,
                color: color,
              ),
            ),
          ],
        ),
        Icon(
          Icons.chevron_right,
          color: colorArrow,
        ),
      ],
    );
  }
}

class ItemProfile2 extends StatelessWidget {
  const ItemProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
