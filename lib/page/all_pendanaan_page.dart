import 'package:banjaloka/bloc/business_bloc.dart';
import 'package:banjaloka/bloc/business_event.dart';
import 'package:banjaloka/bloc/business_state.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../widget/widget_appbar.dart';
import '../widget/widget_item.dart';

class AllNowItem extends StatelessWidget {
  const AllNowItem({Key? key}) : super(key: key);
  static const allPendanaanItemRoute = 'all-dana-item-route' ;


  @override
  Widget build(BuildContext context) {
    final bussinesBloc = BusinessBloc(BusinessRepositories())..add(BusinessLoadingEvent()) ;

    return Scaffold(
        appBar: buildAppBar(context, 'Pendanaan Berlangsung') ,
        body: BlocBuilder<BusinessBloc , BusinessState>(
          bloc: bussinesBloc,
          builder: ( context, state) {
            if (state is LoadingBusinessState){
              return Center(child: CircularProgressIndicator(),) ;
            } else if ( state is BusinessStateLoaded) {
              List<BussinesSoon> business = state.business ;
              return   Padding(
                padding: EdgeInsets.all(20),
                child: GridView.builder(
                    gridDelegate: const  SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: business.length,
                    itemBuilder: (context, index) {
                      return buildContentPendanaan(
                          context,
                          business[index].image[0],
                          business[index].judul,
                          business[index].price,
                          business[index].nilaiBisnis ,
                          business[index].valueProgressbar
                      );
                    }
                ),
              ) ;
            } else if (state is BusinessErrorState ) {
              return Text('eror') ;
            } else {
              return Container() ;
            }
          },
        )
    );
  }
}
