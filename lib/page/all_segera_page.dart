import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/business_bloc.dart';
import '../bloc/business_event.dart';
import '../bloc/business_state.dart';
import '../model/model_item_segera.dart';
import '../respository/bussines_repo.dart';
import '../widget/widget_appbar.dart';
import '../widget/widget_item.dart';
import 'beranda_screen.dart';

class AllSoonItem extends StatelessWidget {
  const AllSoonItem({Key? key}) : super(key: key);
  static const allSoonItemRoute = 'all-soon-item-route' ;

  @override
  Widget build(BuildContext context) {
    final bussinesBloc = BusinessBloc(BusinessRepositories())..add(BusinessLoadingEvent()) ;

    return Scaffold(
      appBar: buildAppBar(context, 'Segera Dibuka') ,
      body: BlocBuilder<BusinessBloc , BusinessState>(
        bloc: bussinesBloc,
        builder: ( context, state) {
          if (state is LoadingBusinessState){
            return Center(child: CircularProgressIndicator(),) ;
          } else if ( state is BusinessStateLoaded) {
            List<BussinesSoon> business = state.business ;
            return   Padding(
              padding: EdgeInsets.all(25),
              child: GridView.builder(
                  gridDelegate: const  SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                  ),
                  itemCount: business.length,
                  itemBuilder: (context, index) {
                    return buildContentSegera(
                        context,
                        // business[index] ,
                        business[index].image[0],
                        business[index].judul,
                        business[index].price);
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
    ) ;
  }
}
