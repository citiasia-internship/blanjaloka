import 'package:banjaloka/bloc/business_bloc.dart';
import 'package:banjaloka/bloc/business_event.dart';
import 'package:banjaloka/bloc/business_state.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/page/beranda_screen.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../widget/widget_appbar.dart';
import '../widget/widget_item.dart';

class AllNowItem extends StatelessWidget {
  const AllNowItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return BusinessBloc(
            RepositoryProvider.of<BusinessRepositories>(context)
        )..add(BusinessLoadingEvent()) ;
      },
      child: BlocBuilder<BusinessBloc , BusinessState>(
        builder: (BuildContext context, state) {
          if (state is LoadingBusinessState){
            return Scaffold(body: Center(child: CircularProgressIndicator(),)) ;
          } else if ( state is BusinessStateLoaded) {
            List<Business> business = state.business ;
            return  Scaffold(
              appBar:buildAppBar(context, 'Pendanaan Berlangsung'),
              body: Container(
                // child: GridView.builder(
                //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //         maxCrossAxisExtent: 200,
                //         childAspectRatio: 3 / 2,
                //         crossAxisSpacing: 20,
                //         mainAxisSpacing: 20),
                //     itemCount: business.length,
                //     itemBuilder: (context, index) {
                //       // return buildContentPendanaan(
                //       //     context,
                //       //     business[index].image[0],
                //       //     // business[index].judul,
                //       //     // business[index].price,
                //       //     // '${business[index].nilaiBisnis} %' ,
                //       //     // business[index].valueProgressbar
                //       // );
                //     }
                // ),
              ),
            ) ;
          } else if (state is BusinessErrorState ) {
            return Text('eror') ;
          } else {
            return Container() ;
          }
        },
      ),
    ) ;
  }


}
