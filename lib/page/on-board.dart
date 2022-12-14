import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/costume_button.dart';
import 'package:flutter/material.dart';

import '../model/model_onboard.dart';

class OnBoardingPage extends StatefulWidget {
  static const routeName = '/onboardingPage';

  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  late int _pageIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageIndex = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // tulisan lewati
            _pageIndex != 2
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 25,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Home.routeName);
                        },
                        child: Text('Lewati',
                            style: lihatSemua.copyWith(
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  )
                : Container(),
            const SizedBox(
              height: 10,
            ),
            // buat gambar sama title
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: dataOnboarding.length,
                itemBuilder: (context, index) {
                  return BuildContentOnBoard(
                    imageUrl: dataOnboarding[index].imageUrl,
                    detail: dataOnboarding[index].detail,
                  );
                },
              ),
            ),
            //buat dot indicator nya
            _pageIndex != 2
                ? Column(
                    children: [
                      Container(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                dataOnboarding.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: DotIndicator(
                                        isActive: index == _pageIndex,
                                      ),
                                    )),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, Home.routeName);
                          },
                          child: costumeButtonFill('Mulai Sekarang')),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                dataOnboarding.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: DotIndicator(
                                        isActive: index == _pageIndex,
                                      ),
                                    )),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: primaryBlue6),
          )
        : Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: neutralWhite,
                border: Border.all(color: primaryBlue6)),
          );
  }
}

class BuildContentOnBoard extends StatelessWidget {
  final String imageUrl;

  final String detail;

  const BuildContentOnBoard(
      {super.key, required this.imageUrl, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, height: 400),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: Text(
            detail,
            textAlign: TextAlign.center,
            style: titleList,
          ),
        ),
      ],
    );
  }
}
