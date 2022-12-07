import 'dart:convert';
import 'dart:async';
import 'package:banjaloka/bloc/exceptions/auth_exceptions.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/model/model_login.dart';
import 'package:banjaloka/model/model_register.dart';
import 'package:http/http.dart' as http;

class BusinessRepositories {
  final baseUrl = "https://blanjaloka.irfancen.com/";

  Future<List<BussinesSoon>> fetchBusiness() async {
    var url = "https://blanjaloka-api.herokuapp.com/data";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      print(response.body);
      return result.map((e) => BussinesSoon.fromJson(e)).toList();
    } else {
      throw Exception('Error');
    }
  }

  Future<dynamic> login(String email, String password) async {
    final response = await http.post(
      Uri.parse("${baseUrl}token"),
      body: {
        "grant_type": "",
        "username": email,
        "password": password,
        "scope": "",
        "client_id": "",
        "client_secret": ""
      },
    );

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return ModelLogin.fromJson(result);
    } else if (response.statusCode == 401) {
      return 401;
    } else {
      throw Exception('Error');
    }
  }

  Future<ModelRegister> register(
    String name,
    String email,
    String noTelepon,
    String password,
  ) async {
    Map map = {
      "name": name,
      "email": email,
      "no_telepon": noTelepon,
      "role_id": 1,
      "password": password,
    };
    var body = json.encode(map);
    final response = await http.post(
      Uri.parse("${baseUrl}users/"),
      headers: {"Content-Type": "application/json"},
      body: body,
    );

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return ModelRegister.fromJson(result);
    } else {
      var res = jsonDecode(response.body);
      String e = res['detail'];
      if (e == "Phone number already registered") {
        throw PhoneNumberAlreadyRegistered();
      } else if (e == "Email already registered") {
        throw EmailAlreadyRegistered();
      } else {
        throw Exception(e);
      }
    }
  }
}
