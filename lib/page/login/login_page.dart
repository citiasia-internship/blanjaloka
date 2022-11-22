import 'package:banjaloka/bloc/auth/bloc/auth_bloc.dart';
import 'package:banjaloka/bloc/auth/bloc/auth_event.dart';
import 'package:banjaloka/bloc/exceptions/auth_exceptions.dart';
import 'package:banjaloka/constants/routes.dart';
import 'package:banjaloka/page/home_page.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/loading/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final String accessToken;
  bool _obsText = true;
  bool _emailOrPasswordIsEmpty = true;
  bool _emailError = false;
  bool _passwordError = false;
  String? _emailErrorText;
  String? _passwordErrorText;

  void _textControllerListener() {
    _emailError = false;
    _emailErrorText = null;
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      _emailOrPasswordIsEmpty = false;
      setState(() {});
    } else {
      _emailOrPasswordIsEmpty = true;
      setState(() {});
    }
  }

  void _setupTextControllerListener() {
    _email.removeListener(_textControllerListener);
    _email.addListener(_textControllerListener);
    _password.removeListener(_textControllerListener);
    _password.addListener(_textControllerListener);
  }

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _setupTextControllerListener();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Masuk",
          style: bigTitle,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome Back!", style: bigTitle),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Masukkan email atau nomor telepon dan kata sandi anda untuk melanjutkan.",
                    style: unselectedLabel,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: Text(
                    "Email atau Nomor Telepon",
                    style: subtitleBold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 17),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Masukkan email atau nomor telepon anda",
                    labelStyle: unselectedLabel,
                    errorText: _emailError ? _emailErrorText : null,
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
                  controller: _email,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 18),
                  child: Text(
                    "Kata Sandi",
                    style: subtitleBold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 52,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Masukkan kata sandi akun anda",
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        !_obsText ? Icons.visibility : Icons.visibility_off,
                        color: primaryBlue6,
                      ),
                      onPressed: () {
                        _obsText = !_obsText;
                        setState(() {});
                      },
                    ),
                  ),
                  obscureText: _obsText,
                  maxLines: 1,
                  controller: _password,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, forgotPasswordRoute)},
                  child: Text(
                    "Lupa kata sandi?",
                    style: detailBadge,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: _emailOrPasswordIsEmpty
                            ? primaryBlue3
                            : primaryBlue6,
                      ),
                      onPressed: _emailOrPasswordIsEmpty
                          ? () {}
                          : () {
                              final email = _email.text;
                              final password = _password.text;
                              BusinessRepositories()
                                  .login(email, password)
                                  .then((value) async {
                                try {
                                  if (value == 401) {
                                    _emailError = true;
                                    _emailErrorText =
                                        "Email atau password salah";
                                    setState(() {});
                                  } else if (value.accessToken != null) {
                                    String accessToken = value.accessToken!;
                                    SharedPreferences pref =
                                        await SharedPreferences.getInstance();
                                    pref.setString("access_token", accessToken);
                                    if (!mounted) return;
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            Home.routeName, (route) => false);
                                  }
                                } on Exception catch (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text("Error")));
                                }
                              });
                            },
                      child: Text(
                        "Masuk",
                        style: textButton,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.22,
                      color: neutralGrey3,
                    ),
                    Text(
                      "Atau masuk dengan",
                      style: fontProfile,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.21,
                      color: neutralGrey3,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: neutralGrey1,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/img/Google.svg'),
                          Text("  Google", style: textButtonBlack),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: neutralGrey1,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/img/Facebook.svg'),
                          Text("  Facebook", style: textButtonBlack),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?", style: fontProfile),
                    GestureDetector(
                        onTap: () {},
                        child: Text(" Daftar disini", style: selectedLabel))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
