import 'package:banjaloka/model/model_agenda.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({Key? key}) : super(key: key);
  static const routeName = '/agenda-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Agenda",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: noAgenda(),
    );
  }

  ListView buildHaveAgenda() {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Agenda agenda = agendaList[index];
        return InkWell(
          onTap: () {},
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: agenda.agendaResult == "Waiting for approval!"
                ? Colors.red
                : agenda.agendaResult == "Dijadwalkan"
                    ? Colors.blue
                    : agenda.agendaResult == "Reschedule"
                        ? Colors.amber
                        : Colors.green,
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.add_business_rounded),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(agenda.investorName)
                        ],
                      ),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary:
                          agenda.agendaResult == "Waiting for approval!"
                              ? Colors.red
                              : agenda.agendaResult == "Dijadwalkan"
                              ? Colors.blue
                              : agenda.agendaResult == "Reschedule"
                              ? Colors.amber
                              : Colors.green,
                        ),
                        child: Text(agenda.agendaResult, style: const TextStyle(fontSize: 13),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on_sharp),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(agenda.placeName)
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      agenda.timeAgenda == ""
                          ? Row()
                          : Row(
                              children: [
                                const Icon(Icons.date_range_outlined),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(agenda.dateAgenda),
                                const Text("  -  "),
                                Text(agenda.timeAgenda)
                              ],
                            )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: agendaList.length,
    );
  }

  Widget noAgenda(){
    return Center(
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
      ),);
  }
}

//////////  No Agenda



