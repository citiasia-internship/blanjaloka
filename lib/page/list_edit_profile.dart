import 'package:banjaloka/page/edit_profile.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/item_profile.dart';
import 'package:banjaloka/widget/separator_widget.dart';
import 'package:flutter/material.dart';

class ListEditProfile extends StatelessWidget {
  static const routeName = "/ListEditProfile";

  const ListEditProfile({super.key});

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
          child: Column(
            children: [
              InkWell(
                onTap: (() {
                  Navigator.pushNamed(context, EditProfilePage.routeName);
                }),
                child: ItemProfile(
                  icon: Icon(
                    Icons.person,
                    color: neutralGrey4,
                  ),
                  label: "Profil Saya",
                  color: neutralGrey4,
                  colorArrow: neutralGrey4,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Separator2(),
              const SizedBox(
                height: 20.0,
              ),
              ItemProfile(
                icon: Icon(
                  Icons.card_travel,
                  color: neutralGrey4,
                ),
                label: "Profil Perusahaan",
                color: neutralGrey4,
                colorArrow: neutralGrey4,
              ),
            ],
          )),
    );
  }
}
