import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({Key? key}) : super(key: key);
  static const routeName = '/agenda-screen' ;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/no_event.png'),
              Text('Agenda Kosong' , style: titleNoAgenda,),
              SizedBox(height: 6,) ,
              Text('Anda tidak memiliki agenda \napapun untuk saat ini.' , textAlign: TextAlign.center, style: businessPriceItemCard.copyWith(
                  fontSize: 14
              ),),
            ]
        ),
      ),
    );
  }
}
