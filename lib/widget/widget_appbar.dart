import 'package:flutter/material.dart';

// karena appbar nya sama jadi kita buat satu widget saja yaa

AppBar buildAppBar(BuildContext context, String title  ) {
  return AppBar(
    leading: BackButton(
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        }),
    backgroundColor: Colors.white,
    elevation: 3.8,
    shadowColor: const Color.fromARGB(255, 237, 239, 237),
    title:  Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
    automaticallyImplyLeading: true,
  );
}