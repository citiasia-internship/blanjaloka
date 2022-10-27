import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:banjaloka/theme/theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: neutralBlack),
        title: Text(
          "Lupa Kata Sandi",
          style: bigTitle,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: const Color.fromARGB(209, 228, 240, 246),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: SvgPicture.asset('asset/img/info.svg')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Masukkan email atau nomor telepon yang terdaftar untuk mengatur kata sandi baru.",
                          style: fontProfile,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 52,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Email atau nomor telepon anda",
                    labelStyle: unselectedLabel,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(
                        color: primaryBlue6,
                      ),
                    ),
                  ),
                  obscureText: false,
                  maxLines: 1,
                  controller: _controller,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height * 0.5)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: primaryBlue6,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(forgotPasswordConfirmationRoute);
                        // if (_controller.count < 60) _controller.reset();
                        // _controller.startTimer();
                      },
                      child: Text(
                        "Kirim",
                        style: textButton,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
