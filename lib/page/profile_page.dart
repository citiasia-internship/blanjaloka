import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/item_profile.dart';
import 'package:banjaloka/widget/separator_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60.0, bottom: 20.0),
                    height: 100.0,
                    width: 100.0,
                    child:
                        // const Icon(
                        //   Icons.person,
                        //   size: 100,
                        // ),
                        Image.asset(
                      "asset/img/accountProfile.png",
                      height: 100.0,
                      width: 100.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      const Separator2(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.settings,
                              color: neutralGrey5,
                            ),
                            label: "Pengatura Akun",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.language,
                              color: neutralGrey5,
                            ),
                            label: "Pengaturan Bahasa",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.help,
                              color: neutralGrey5,
                            ),
                            label: "Paling Banyak Ditanyakan",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.description,
                              color: neutralGrey5,
                            ),
                            label: "Ketentuan Layanan",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.security,
                              color: neutralGrey5,
                            ),
                            label: "Kebijakan Privasi",
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Separator2(),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          ItemProfile(
                            icon: Icon(
                              Icons.logout,
                              color: semanticerror,
                            ),
                            label: "Keluar",
                            color: semanticerror,
                            colortext: semanticerror,
                            coloricon: semanticerror,
                          ),
                          const SizedBox(
                            height: 35.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
