import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';

class RegisterPageSuccess extends StatelessWidget {

  static const routeName = '/registerPageSuccess';
  const RegisterPageSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset("asset/img/welcome.png"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Berhasil mendaftar!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Selamat! Akunmu sudah terdaftar. \nSilahkan masuk untuk melanjutkan.",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),

              const SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Home.routeName);
                  },
                  style: buttonPrimaryRegister,
                  child: const Text("Masuk", style: TextStyle(fontSize: 17),),
                ),
              ),
            ],
          ),
        ));
  }
}
