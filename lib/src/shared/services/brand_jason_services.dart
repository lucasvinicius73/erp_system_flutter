import 'package:erp_system/src/shared/models/brand_model.dart';
import 'package:erp_system/src/shared/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'json_services.dart';

class BrandJsonServices extends JsonServices {
  late String urlBrand;
  BrandJsonServices(){
    urlBrand = '${url}brands/';
  }

  Future<List<Brand>> getBrand() async {
    final response = await http.get(
      Uri.parse(urlBrand),
      headers: <String, String>{'authorization': auth},
    );
    Iterable body = json.decode(response.body);
    final brands = body.map((model) => Brand.fromJson(model)).toList();
    return brands;
  }

  Future<http.Response> setProduct() async {
    final response = await http.post(
      Uri.parse(urlBrand),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
      body: jsonEncode({
        "name": "Teste Flutter 4",
      }),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> updateProduct() async {
    int id = 9;
    final response = await http.put(
      Uri.parse('$urlBrand$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
      body: jsonEncode({
        "name": "Teste Flutter 5",
      }),
    );
    return response;
  }

  Future<http.Response> deleteProduct() async {
    int id = 9;
    final response = http.delete(
      Uri.parse('$urlBrand$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
    );
    return response;
  }
}
