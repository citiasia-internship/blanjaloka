import 'package:banjaloka/page/account_screen.dart';
import 'package:banjaloka/page/agenda_screen.dart';
import 'package:banjaloka/page/beranda_screen.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/page/market_modal_screen.dart';
import 'package:banjaloka/page/on-board.dart';
import 'package:banjaloka/page/splashscreeen.dart';
import 'package:banjaloka/page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnBoardingPage.routeName: (context) => OnBoardingPage(),
        WelcomePage.routeName : (context) => WelcomePage() ,
        Home.routeName : (context) => Home() ,
        MarketModalScreen.routeName : (context) => MarketModalScreen() ,
        BerandaScreen.routeName : (context) => BerandaScreen() ,
        AgendaScreen.routeName : (context) => AgendaScreen() ,
        AccountScreen.routeName : (context) => AccountScreen() ,

      }
    );
  }
}

