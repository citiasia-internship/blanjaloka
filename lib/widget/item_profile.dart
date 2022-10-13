
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemProfile extends StatelessWidget {
  ItemProfile({
    Key? key,
    this.icon,
    this.label,
    this.color,
  }) : super(key: key);

  String? label;
  Icon? icon;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
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
                // style: textBlack500.copyWith(
                //   fontSize: 14.0,
                //   color: color,
                // ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}