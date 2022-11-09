import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPaawordConfirmationPage extends StatefulWidget {
  const ForgotPaawordConfirmationPage({super.key});

  @override
  State<ForgotPaawordConfirmationPage> createState() =>
      _ForgotPaawordConfirmationPageState();
}

class _ForgotPaawordConfirmationPageState
    extends State<ForgotPaawordConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: neutralBlack),
        backgroundColor: neutralWhite,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.asset('asset/img/mailsent.png'),
              const SizedBox(height: 30),
              Text(
                "Link telah terkirim!",
                style: bigTitle,
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 0,
                child: Text(
                  "Kami telah mengirimkan link untuk mengatur kata sandi baru ke alamat email email@gmail.com",
                  textAlign: TextAlign.center,
                  style: fontProfile,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.95,
                color: neutralGrey3,
              ),
              const SizedBox(height: 25),
              // Expanded(
              //     flex: 0,
              //     child: GetBuilder<ForgotPasswordConfirmationPageController>(
              //         builder: (builder) {
              //       return (_controller.count != 0)
              //           ? Text(
              //               "Belum dapat link? Kirim ulang dalam ${_controller.count} detik",
              //               textAlign: TextAlign.center,
              //               style: fontProfile,
              //             )
              //           : Expanded(
              //               flex: 0,
              //               child: RichText(
              //                 text: TextSpan(
              //                   text: 'Belum dapat link? ',
              //                   style: fontProfile,
              //                   children: <TextSpan>[
              //                     TextSpan(
              //                         text: 'Kirim Ulang ',
              //                         recognizer: TapGestureRecognizer()
              //                           ..onTap = () {
              //                             _controller.reset();
              //                             _controller.startTimer();
              //                           },
              //                         style: selectedLabel),
              //                     TextSpan(text: 'atau ', style: fontProfile),
              //                     TextSpan(
              //                         text: 'Ganti Email',
              //                         style: selectedLabel,
              //                         recognizer: TapGestureRecognizer()
              //                           ..onTap = () {
              //                             _controller.reset();
              //                           }),
              //                   ],
              //                 ),
              //               ));
              //     })),
            ],
          ),
        ),
      ),
    );
  }
}
