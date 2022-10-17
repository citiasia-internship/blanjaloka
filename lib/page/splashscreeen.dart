import 'dart:async';

import 'package:banjaloka/page/on-board.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen' ;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    splashScreen() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F7FA),
      body: Center(
        child: Image.asset('asset/Logo.png', width: 300,),
      ),
    );
  }

  splashScreen() async {
    var duration =  const Duration(seconds: 4) ;
    return Timer(duration, (){
      Navigator.pushReplacementNamed(context, OnBoardingPage.routeName) ;
    }) ;
  }


}
