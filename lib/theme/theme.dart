import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//for color
Color primaryBlue3 = const Color.fromARGB(255, 215, 232, 241);
Color primaryBlue6 = const Color(0xff398AB9);
Color primaryBlue7 = const Color(0xff2F739A);
Color primaryBlue1 = const Color(0xffF2F7FA);
Color neutralGrey1 = const Color.fromARGB(255, 240, 240, 240);
Color neutralGrey4 = const Color(0xff686868);
Color neutralGrey3 = const Color(0xffAEAEAE);
Color neutralBlack = const Color(0xff181A1B);
Color neutralGrey5 = const Color(0xff3E4041);
Color neutralWhite = const Color(0xffffffff);
Color progressGrey = const Color(0xffD9D9D9);
Color semanticerror = const Color(0xffFF4348);

//radius
double defaultRadius = 10.0;

// for text style
TextStyle titleList = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontSize: 16,
);

TextStyle bigTitle = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.normal,
  fontSize: 18,
);

TextStyle subtitle = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontStyle: FontStyle.normal,
  fontSize: 14,
);

TextStyle subtitleBold = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.normal,
  fontSize: 14,
);

TextStyle detailBadge = GoogleFonts.inter().copyWith(
  color: primaryBlue6,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.normal,
  fontSize: 12,
);

TextStyle unselectedLabel = GoogleFonts.inter().copyWith(
  color: neutralGrey3,
  fontStyle: FontStyle.normal,
  fontSize: 14,
);

TextStyle selectedLabel = GoogleFonts.inter().copyWith(
  color: primaryBlue6,
  fontStyle: FontStyle.normal,
  fontSize: 14,
);

TextStyle lihatSemua = GoogleFonts.inter().copyWith(
  color: primaryBlue7,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  fontSize: 14,
);

TextStyle titleNoAgenda = GoogleFonts.inter().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  fontSize: 20,
);

TextStyle textButton = GoogleFonts.inter().copyWith(
  color: neutralWhite,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontSize: 16,
);

TextStyle textButtonBlack = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontSize: 16,
);

TextStyle titleItemCard = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.w400,
  fontSize: 12,
);

TextStyle businessPriceItemCard = GoogleFonts.inter().copyWith(
  color: neutralGrey5,
  fontWeight: FontWeight.w400,
  fontSize: 10,
);

TextStyle priceItemCard = GoogleFonts.inter().copyWith(
  color: neutralBlack,
  fontWeight: FontWeight.w600,
  fontSize: 12,
);

TextStyle fontProfile = GoogleFonts.inter(
  color: neutralGrey5,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(color: primaryBlue6),
);

var buttonSecondaryRegister = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: const EdgeInsets.all(17),
  // backgroundColor: progressGrey,
  primary: progressGrey,
  side: BorderSide(color: neutralWhite),
);

var buttonPrimaryRegister = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: const EdgeInsets.all(17),
  // backgroundColor: primaryBlue6,
);
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    // padding: EdgeInsets.all(17),
    // primary: primaryBlue6)
