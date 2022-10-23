import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class MarketModalScreen extends StatelessWidget {
  const MarketModalScreen({Key? key}) : super(key: key);
  static const routeName = '/market-modal-screen' ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Available soon InsyaAllah :)' , style: titleList.copyWith(fontSize: 30),),
      ),
    );
  }
}
