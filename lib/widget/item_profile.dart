import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ItemProfile extends StatelessWidget {
  ItemProfile({
    Key? key,
    this.icon,
    this.label,
    this.color,
    this.colortext,
    this.coloricon,
  }) : super(key: key);

  String? label;
  Icon? icon;
  Color? color;
  Color? colortext = neutralGrey5;
  Color? coloricon = neutralGrey5;

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
                style: GoogleFonts.inter(
                  color: colortext,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
                // style: fontProfile,
                // style: textBlack500.copyWith(
                //   fontSize: 14.0,
                //   color: color,
                // ),
              ),
            ],
          ),
          Icon(
            Icons.chevron_right,
            color: coloricon,
          ),
        ],
      ),
    );
  }
}
