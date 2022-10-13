import 'dart:convert';

import 'package:banjaloka/model/model_item_segera.dart';
import 'package:http/http.dart'as http;

class BusinessRepositories {


  Future<List<Business>> fetchBusiness() async {
    var url = 'https://6345313139ca915a69f82198.mockapi.io/api/v1/product' ;

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200){
      final List result = jsonDecode(response.body);
      return result.map((e) => Business.fromJson(e)).toList() ;
    } else {
      throw Exception('Error') ;
    }

  }
}