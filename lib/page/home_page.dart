
import 'package:banjaloka/page/agenda_screen.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'account_screen.dart';
import 'beranda_screen.dart';
import 'market_modal_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home-screen' ;


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // buat sebuah param untuk bottom nav nya
  List<Map<String, dynamic>>? _pages ;
  int  _selectedPageIndex = 0 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      {
        'pages' : BerandaScreen() ,
      },
      {
        'pages' : MarketModalScreen(),
      },
      {
        'pages' : AgendaScreen(),
      },
      {
        'pages' : AccountScreen(),
      },

    ] ;
  }

  void selectedPage(int index){
    setState(() {
      _selectedPageIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: selectedPage,
          backgroundColor: Colors.white,
          unselectedItemColor: neutralGrey4,
          selectedItemColor: neutralGrey5,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/bottom_nav/home.svg',),
              activeIcon: SvgPicture.asset('asset/bottom_nav/home_active.svg') ,
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/bottom_nav/storefront.svg'),
              activeIcon: SvgPicture.asset('asset/bottom_nav/storefront_active.svg'),
              label: 'Pasar Modal',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/bottom_nav/calendar_month.svg'),
              activeIcon: SvgPicture.asset('asset/bottom_nav/calendar_month_active.svg'),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/bottom_nav/person.svg'),
              activeIcon: SvgPicture.asset('asset/bottom_nav/person_active.svg'),
              label: 'Profile',
            ),
          ]
      ),
    );
  }
}
