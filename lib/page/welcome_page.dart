import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/page/register/register_page.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/costume_button.dart';
import 'package:banjaloka/widget/separator_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const routeName = '/welcomepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutralWhite,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Image.asset(
                    'asset/Logo.png',
                    width: 187,
                    height: 75,
                  )),
              const SizedBox(height: 60),
              Image.asset(
                'asset/opening.png',
                height: 220,
              ),
              const SizedBox(
                height: 107.0,
              ),
              // BUTTON MASUK
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, loginRoute);
                  },
                  child: costumeButtonFill('Masuk')),
              const SizedBox(
                height: 30,
              ),
              const Separator(
                text: "atau",
              ),
              const SizedBox(
                height: 30,
              ),
              // BUTTON DAFTAR
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, RegisterPage.routeName);
                },
                child: costumeButtonBorder('Daftar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}