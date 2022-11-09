import 'dart:async';

import 'package:banjaloka/page/on-board.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F7FA),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Image.asset(
            'asset/Logo.png',
            width: 300,
          ),
        ),
      ),
    );
  }

  splashScreen() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, OnBoardingPage.routeName);
    });
  }
}
