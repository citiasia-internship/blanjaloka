import 'package:banjaloka/bloc/auth/bloc/auth_bloc.dart';
import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/page/account_screen.dart';
import 'package:banjaloka/page/agenda_screen.dart';
import 'package:banjaloka/page/all_pendanaan_page.dart';
import 'package:banjaloka/page/all_segera_page.dart';
import 'package:banjaloka/page/beranda_screen.dart';
import 'package:banjaloka/page/detail_screen.dart';
import 'package:banjaloka/page/edit_pass.dart';
import 'package:banjaloka/page/edit_profile.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/page/info_account_page.dart';
import 'package:banjaloka/page/list_edit_profile.dart';
import 'package:banjaloka/page/login/forgot_password_confirmation_page.dart';
import 'package:banjaloka/page/login/forgot_password_page.dart';
import 'package:banjaloka/page/login/login_page.dart';
import 'package:banjaloka/page/market_modal_screen.dart';
import 'package:banjaloka/page/on-board.dart';
import 'package:banjaloka/page/privacy_page.dart';
import 'package:banjaloka/page/register/register_page.dart';
import 'package:banjaloka/page/register/register_page_success.dart';
import 'package:banjaloka/page/splashscreeen.dart';
import 'package:banjaloka/page/welcome_page.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/business_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _authBloc = AuthBloc(BusinessRepositories());

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
        DetailScreen.routeName: (context) =>  DetailScreen(),
        Privasi.routeName: (context) => const Privasi(),
        InfoAccount.routeName: (context) => const InfoAccount(),

        //item soon dan danan
        AllNowItem.allPendanaanItemRoute: (context) => const AllNowItem(),
        AllSoonItem.allSoonItemRoute: (context) => const AllSoonItem(),

        // Profile
        ListEditProfile.routeName: (context) => const ListEditProfile(),
        EditProfilePage.routeName: (context) => const EditProfilePage(),
        Editpass.routeName: (context) => const Editpass(),

        //login
        loginRoute: (context) => BlocProvider.value(
              value: _authBloc,
              child: const LoginPage(),
            ),
        forgotPasswordRoute: (context) => const ForgotPasswordPage(),
        forgotPasswordConfirmationRoute: (context) =>
            const ForgotPasswordConfirmationPage(),

        // register route
        RegisterPage.routeName: (context) => const RegisterPage(),
        RegisterPageSuccess.routeName: (context) => const RegisterPageSuccess(),
      },
    );
  }
}
