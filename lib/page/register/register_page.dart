import 'package:banjaloka/bloc/exceptions/auth_exceptions.dart';
import 'package:banjaloka/page/privacy_page.dart';
import 'package:banjaloka/page/register/register_page_success.dart';
import 'package:banjaloka/page/welcome_page.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const routeName = '/registerPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;
  late final TextEditingController _nama;
  late final TextEditingController _email;
  late final TextEditingController _noTelepon;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;
  bool _emailError = false;
  bool _phoneError = false;
  bool _passwordError = false;
  @override
  void initState() {
    _nama = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _noTelepon = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _nama.dispose();
    _noTelepon.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacementNamed(context, WelcomePage.routeName);
            }),
        backgroundColor: Colors.white,
        elevation: 3.8,
        shadowColor: const Color.fromARGB(255, 237, 239, 237),
        title: const Text(
          'Daftar',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Welcome!",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Silahkan lengkapi data-data di bawah ini untuk mendaftarkan akun.",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.grey, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Nama",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukan nama anda',
                    // focusedBorder: OutlineInputBorder(),
                    border: outlineInputBorder,
                    contentPadding: const EdgeInsets.all(17),
                    isDense: true,
                  ),
                  controller: _nama,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukkan alamat email anda',
                    // focusedBorder: OutlineInputBorder(),
                    border: outlineInputBorder,
                    contentPadding: const EdgeInsets.all(17),
                    isDense: true,
                    errorText:
                        _emailError ? "Alamat email sudah terdaftar" : null,
                  ),
                  controller: _email,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Nomor Telepon",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Masukan nomor Telepon anda',
                    // focusedBorder: OutlineInputBorder(),
                    border: outlineInputBorder,
                    contentPadding: const EdgeInsets.all(17),
                    isDense: true,
                    errorText:
                        _phoneError ? "Nomor telepon sudah terdaftar" : null,
                  ),
                  controller: _noTelepon,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Kata Sandi",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  // obscureText: controller.obscureText.value,
                  decoration: InputDecoration(
                    hintText: 'Masukkan kata sandi akun anda',
                    // focusedBorder: OutlineInputBorder(),
                    border: outlineInputBorder,
                    contentPadding: const EdgeInsets.all(17),
                    errorText: _passwordError ? "Kata sandi tidak sama" : null,
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                    ),

                    isDense: true,
                  ),
                  obscureText: obscureText,
                  controller: _password,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Konfirmasi kata sandi",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: neutralGrey5,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  // obscureText: controller.obscureTextConfirm.value,
                  decoration: InputDecoration(
                    hintText: 'Konfirmasi kata sandi akun anda',
                    // focusedBorder: OutlineInputBorder(),
                    border: outlineInputBorder,
                    contentPadding: const EdgeInsets.all(17),
                    errorText: _passwordError ? "Kata sandi tidak sama" : null,
                    suffixIcon: IconButton(
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),

                    isDense: true,
                  ),
                  controller: _confirmPassword,
                  obscureText: obscureText,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () async {
                      _emailError = false;
                      _phoneError = false;
                      _passwordError = false;
                      setState(() {});
                      if (_password.text != _confirmPassword.text) {
                        _passwordError = true;
                        setState(() {});
                      } else {
                        try {
                          await BusinessRepositories().register(
                            _nama.text,
                            _email.text,
                            _noTelepon.text,
                            _password.text,
                          );
                          if (!mounted) return;
                          Navigator.pushReplacementNamed(
                              context, RegisterPageSuccess.routeName);
                        } on EmailAlreadyRegistered catch (_) {
                          _emailError = !_emailError;
                          setState(() {});
                        } on PhoneNumberAlreadyRegistered catch (_) {
                          _phoneError = !_phoneError;
                          setState(() {});
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: primaryBlue6),
                    child: const Text("Daftar"),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Divider(
                        color: neutralGrey5,
                      ),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 20),
                          color: neutralWhite,
                          child: Text(
                            'Atau Daftar Dengan',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: buttonSecondaryRegister,
                  icon: SvgPicture.asset("asset/img/Google.svg"),
                  label: Text(
                    'Google',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: buttonSecondaryRegister,
                  icon: SvgPicture.asset("asset/img/Facebook.svg"),
                  label: Text(
                    'Facebook',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Sudah punya akun?"),
                    Text(" "),
                    Text(
                      "Masuk disini",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return primaryBlue6;
}
