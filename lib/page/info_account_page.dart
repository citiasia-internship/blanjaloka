
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/input_default.dart';
import 'package:flutter/material.dart';

class InfoAccount extends StatelessWidget {
  static const routeName = "/infoaccount";

  const InfoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.arrow_back,
            color: neutralBlack,
          ),
        ),
        title: Text(
          "Informasi Akun",
          style: bigTitle.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: neutralWhite,
      ),
      body: Container(
        padding: const EdgeInsets.all(26.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            // INPUT 1
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alamat Email",
                    style: bigTitle.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                      height: 40.0,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: InputDefault(
                              hint: "email@gmail.com",
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: const Icon(Icons.drive_file_rename_outline),
                            onPressed: () {},
                          )),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            // INPUT 2
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nomor Telepon",
                    style: bigTitle.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 8.0, bottom: 15.0),
                      height: 40.0,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: InputDefault(
                              hint: "08909907538",
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                            icon: const Icon(Icons.drive_file_rename_outline),
                            onPressed: () {},
                          )),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}