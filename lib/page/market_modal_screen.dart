import 'package:banjaloka/bloc/business_bloc.dart';
import 'package:banjaloka/bloc/business_event.dart';
import 'package:banjaloka/bloc/business_state.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:banjaloka/widget/widget_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model_item_segera.dart';
import '../widget/widget_item.dart';

class MarketModalScreen extends StatelessWidget {
  const MarketModalScreen({Key? key}) : super(key: key);
  static const routeName = '/market-modal-screen' ;


  @override
  Widget build(BuildContext context) {
    final businessBloc = BusinessBloc(BusinessRepositories())..add(BusinessLoadingEvent());
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 3.8,
        shadowColor: const Color.fromARGB(255, 237, 239, 237),
        title:  Text(
          "Pasar Modal",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 23
        ),
        child: buildHaveData(businessBloc),
      ),
    );
  }

  SingleChildScrollView buildHaveData(BusinessBloc businessBloc) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 36,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xffAEAEAE ),
                      width: 2
                    )
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari nama bisnis',
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Image.asset('asset/img/tune.png'),
                SizedBox(width: 4),
                Text('Filter', style:  GoogleFonts.inter(
                  fontSize: 14 ,
                  fontWeight: FontWeight.w500 ,
                  color: Color(0xff2F739A)
                ),)
              ],
            ),
            SizedBox(height: 25,),
            BlocBuilder<BusinessBloc , BusinessState>(
              bloc: businessBloc,
              builder: (context, state) {
                if (state is LoadingBusinessState){
                  return Center(child: CircularProgressIndicator(),) ;
                } else if ( state is BusinessStateLoaded) {
                  List<Business> business = state.business ;
                  return   Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        gridDelegate: const  SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: business.length,
                        itemBuilder: (context, index) {
                          return buildContentPendanaan(
                              context: context,
                              imgUrl: business[index].image,
                              title: business[index].name,
                              price: business[index].price,
                              percenBussines: business[index].percentBussines,
                              valueBussines: business[index].valueProgressBar.toDouble());
                        }
                    ),
                  ) ;
                } else if (state is BusinessErrorState ) {
                  return Text('eror') ;
                } else {
                  return Container() ;
                }
              },
            ),
          ],
        ),
      );
  }

  Widget noData(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('asset/img/no.png' , height: 180, width: 210,),
        SizedBox(height: 25,),
        Text('Pasar Modal Belum Tersedia' , style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 10),
        Text('Pasar modal tersedia setiap empat bulan sekali \nsetelah melewati masa inkubasi.' , style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400
        ),),
      ],
    );
  }
}
