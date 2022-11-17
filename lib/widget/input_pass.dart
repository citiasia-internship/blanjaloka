import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class InputPass extends StatefulWidget {
  const InputPass({Key? key}) : super(key: key);

  @override
  State<InputPass> createState() => _InputPassState();
}

class _InputPassState extends State<InputPass> {
  bool obscure = true;
  showHide() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      cursorColor: Colors.black,
      obscureText: obscure,
      autocorrect: true,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              showHide();
            },
            icon: Icon(
              obscure ? Icons.visibility : Icons.visibility_off,
            )),
        hintText: "Masukkan kata sandi akun anda",
        hintStyle: subtitle.copyWith(
          fontSize: 12.0,
        ),

        // errorText: "Cek email atau password anda lagi",
        // errorStyle: textRed500,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:  BorderSide(
            color: neutralBlack,
            width: 5.0,
          ),
        ),
      ),
    );
  }
}