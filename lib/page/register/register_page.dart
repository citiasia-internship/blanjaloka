import 'package:banjaloka/page/privacy_page.dart';
import 'package:banjaloka/page/welcome_page.dart';
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
  bool obscureValue = false;
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
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
                    contentPadding: EdgeInsets.all(17),
                    isDense: true,
                  ),
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
                    contentPadding: EdgeInsets.all(17),
                    isDense: true,
                  ),
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
                    contentPadding: EdgeInsets.all(17),
                    isDense: true,
                  ),
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
                  contentPadding: EdgeInsets.all(17),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  isDense: true,
                )),
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
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  isDense: true,
                )),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Privasi.routeName);
                  },
                  child: const Text("Daftar"),
                  style: buttonPrimaryRegister,
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
