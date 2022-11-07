import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/page/privacy_page.dart';
import 'package:banjaloka/page/register/register_page.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/costume_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const routeName = '/welcomepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutralWhite,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: 40,
                ),
                child: Image.asset(
                  'asset/Logo.png',
                  width: 187,
                  height: 75,
                )),
            SizedBox(height: 60),
            Image.asset(
              'asset/opening.png',
              height: 220,
            ),
            SizedBox(height: 40),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, loginRoute);
                },
                child: costumeButtonFill('Masuk')),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Atau',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: neutralGrey4),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, Privasi.routeName);
              },
              child: costumeButtonBorder('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
