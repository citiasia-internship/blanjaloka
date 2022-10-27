import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/page/account_screen.dart';
import 'package:banjaloka/page/agenda_screen.dart';
import 'package:banjaloka/page/beranda_screen.dart';
import 'package:banjaloka/page/detail_screen.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/page/login/forgot_password_confirmation_page.dart';
import 'package:banjaloka/page/login/forgot_password_page.dart';
import 'package:banjaloka/page/login/login_page.dart';
import 'package:banjaloka/page/market_modal_screen.dart';
import 'package:banjaloka/page/on-board.dart';
import 'package:banjaloka/page/register/register_page.dart';
import 'package:banjaloka/page/register/register_page_success.dart';
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
          WelcomePage.routeName: (context) => const WelcomePage(),
          Home.routeName: (context) => const Home(),
          MarketModalScreen.routeName: (context) => const MarketModalScreen(),
          BerandaScreen.routeName: (context) => const BerandaScreen(),
          AgendaScreen.routeName: (context) => const AgendaScreen(),
          AccountScreen.routeName: (context) => const AccountScreen(),
          DetailScreen.routeName: (context) => const DetailScreen(),

          //login
          loginRoute: (context) => const LoginPage(),
          forgotPasswordRoute: (context) => const ForgotPasswordPage(),
          forgotPasswordConfirmationRoute: (context) =>
              const ForgotPaawordConfirmationPage(),

          // register route
          RegisterPage.routeName: (context) => const RegisterPage(),
          RegisterPageSuccess.routeName: (context) =>
              const RegisterPageSuccess(),
        });
  }
}
