import 'package:banjaloka/bloc/business_event.dart';
import 'package:banjaloka/bloc/business_state.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/page/detail_screen.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/business_bloc.dart';
import '../theme/theme.dart';

class ContentHome extends StatelessWidget {
  const ContentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return BusinessBloc(
            RepositoryProvider.of<BusinessRepositories>(context))
          ..add(BusinessLoadingEvent());
      },
      child: BlocBuilder<BusinessBloc, BusinessState>(
        builder: (context, state) {
          if (state is LoadingBusinessState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is BusinessStateLoaded) {
            //   buat datany dulu
            List<Business> business = state.business;
            return Column(
              children: [
                buildTitle('Pendanaan Berlangsung'),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 25),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: business.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: buildContent(
                              context,
                              business[index].image,
                              business[index].name,
                              business[index].price,
                              '50 %',
                              true,
                              0.5),
                        );
                      }),
                ),
                const SizedBox(height: 30),
                buildTitle('Segera Dibuka'),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 25),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: business.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: buildContent(
                              context,
                              business[index].image,
                              business[index].name,
                              business[index].price,
                              null,
                              null,
                              null),
                        );
                      }),
                ),
              ],
            );
          } else if (state is BusinessErrorState) {
            return Text('error ');
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: titleList,
          ),
          Text(
            'Lihat Semua',
            style: lihatSemua,
          )
        ],
      ),
    );
  }

  Widget buildContent(
      BuildContext context,
      String imgUrl,
      String title,
      String price,
      String? percenBussines,
      bool? progresIndicator,
      double? valueBussines) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetailScreen.routeName),
      child: Container(
        height: 200,
        width: 149,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.network(
                  imgUrl,
                  height: 80,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // detail dari item
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 9.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: titleItemCard),
                      SizedBox(height: 10),
                      progresIndicator == true
                          ? LinearProgressIndicator(
                              backgroundColor: progressGrey,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Color(0xff398AB9)),
                              value: valueBussines,
                            )
                          : Container(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Nilai Bisnis', style: businessPriceItemCard),
                            percenBussines != null
                                ? Text(
                                    percenBussines,
                                    style: businessPriceItemCard,
                                  )
                                : Container()
                          ]),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Rp ${price}',
                        style: priceItemCard,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
