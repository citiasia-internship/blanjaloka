import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:banjaloka/widget/carousel_slider.dart';
import 'package:banjaloka/widget/content_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);
  static const routeName = '/beranda-screen' ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 15, right: 25),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // for banner
              CarouselSliderWidget() ,
              const SizedBox(
                height: 25,
              ),
              RepositoryProvider(
                  create: (context) => BusinessRepositories() ,
                child: const ContentHome(),
              )
            ],
          ),
        )
      ),
    );
  }
}
