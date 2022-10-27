import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/carousel_slider.dart';
import 'package:banjaloka/widget/content_home.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);
  static const routeName = '/beranda-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Align(
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
            CarouselSliderWidget(),
            const SizedBox(
              height: 25,
            ),
            RepositoryProvider(
              create: (context) => BusinessRepositories(),
              child: const ContentHome(),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DottedBorder(
                  dashPattern: const [5,4],
                  borderType: BorderType.RRect,
                  strokeWidth: 0.5,
                  radius: const Radius.circular(12),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 122,
                      width: 323,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        color: primaryBlue1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Berizin dan diawasi oleh:"),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'asset/img/ojk_logo.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      )),
    );
  }
}
