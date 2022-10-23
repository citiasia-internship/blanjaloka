import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  static const routeName = '/account-screen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Available soon InsyaAllah :)' , style: titleList.copyWith(fontSize: 30),),
      ),
    );
  }
}
