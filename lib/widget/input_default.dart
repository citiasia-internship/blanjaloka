import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputDefault extends StatelessWidget {
  String? hint = "Masukkan email atau nomor telepon anda";

  InputDefault({Key? key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: primaryBlue7,
      obscureText: false,
      autocorrect: true,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: subtitle.copyWith(
          fontSize: 12.0,
        ),
        // errorText: "Cek email atau password anda lagi",
        errorStyle: bigTitle,
        border:  OutlineInputBorder(
          borderSide: BorderSide(
            color: neutralBlack,
            width: 10.0,
          ),
        ),
      ),
    );
  }
}