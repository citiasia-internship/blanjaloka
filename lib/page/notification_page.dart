import 'package:banjaloka/widget/widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Notifikasi'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildItemNotif(),
            Divider(color: Color(0xffD9D9D9),height: 1,),
            buildItemNotif(),
            Divider(color: Color(0xffD9D9D9),height: 1,),
            buildItemNotif(),
            Divider(color: Color(0xffD9D9D9),height: 1,),
            buildItemNotif(),
          ],
        ),
      )
    );
  }

  Widget buildItemNotif(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Lorem ipsum dolor sit amet, title.', style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Colors.black
            ),),
          SizedBox(height: 5,),
          Container(
            width: 323,
            child: Text('Lorem ipsum dolor sit amet, consectetur adipisci elit, text.',style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              color: Color(0xff181A1B)
            )),
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Icon(Icons.alarm, size: 14,color: Color(0xff3E4041),),
              SizedBox(width: 6),
              Text('04-11-2022 | 15.00',style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff686868)
              ))
            ],
          )
        ],
      ),
    );
  }
}
