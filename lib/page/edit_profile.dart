import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/button_default.dart';
import 'package:banjaloka/widget/input_default.dart';
import 'package:banjaloka/widget/separator_widget.dart';
import 'package:banjaloka/widget/text_click.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  static const routeName = "/editprofile";
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: neutralBlack,
          ),
        ),
        title: Text(
          "Ubah Profil Saya",
          style: bigTitle.copyWith(
            fontSize: 20.0,
          ),
        ),
        backgroundColor: neutralWhite,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(11.0),
          child: Stack(
            children: [
              // SECTION 1 PHOTO PROFILE
              Container(
                padding: const EdgeInsets.all(18.0),
                color: const Color(0xffF8F8F8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                            // color: neutralWhite,
                            borderRadius: BorderRadius.circular(50.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                "asset/img/accountProfile.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        TextClick(
                          text: "Ubah Foto Profil",
                          size: 12.0,
                          onPress: (() {}),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // SECTION 2 FORM INPUT
              Container(
                margin: const EdgeInsets.only(top: 170.0),
                width: double.infinity,
                height: 590.0,
                decoration: BoxDecoration(
                  color: neutralWhite,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 26.0,
                    right: 26.0,
                    left: 26.0,
                  ),
                  child: ListView(
                    children: [
                      // INPUT 1
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Shofa Nabila Alifa",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 2
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tempat Kelahiran",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Masukkan tempat kelahiran anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 3
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tanggal Lahir",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Masukkan tanggal lahir anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 4
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alamat Tempat Tinggal",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Masukkan alamat tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 5
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Provinsi",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih provinsi tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 6
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kecamatan",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih kecamatan tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      // INPUT 7
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kode Pos",
                            style: bigTitle.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 8.0, bottom: 15.0),
                            height: 40.0,
                            child: InputDefault(
                              hint: "Pilih kode pos tempat tinggal anda",
                            ),
                          ),
                        ],
                      ),
                      const Separator2(),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30.0),
                        child: ButtonDefault(
                          text: "Simpan",
                          height: 48.0,
                          width: 323.0,
                          onPress: () {},
                          color: primaryBlue7,
                          radius: 10.0,
                        ),
                      )
                    ],
                  ),
                ),
              )
              // SECTION 3 BUTTON
            ],
          ),
        ),
      ),
    );
  }
}
