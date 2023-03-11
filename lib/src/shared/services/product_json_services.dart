import 'package:erp_system/src/shared/models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'json_services.dart';

class ProductJsonServices extends JsonServices {
  late String urlProduct;

  ProductJsonServices() {
    urlProduct = '${url}products/';
  }

  Future<List<Product>> getProducts() async {
    final response = await http.get(
      Uri.parse(urlProduct),
      headers: <String, String>{'authorization': auth},
    );
    Iterable body = json.decode(response.body);
    final products = body.map((model) => Product.fromJson(model)).toList();
    return products;
  }

  Future<http.Response> setProduct() async {
    final response = await http.post(
      Uri.parse(urlProduct),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
      body: jsonEncode({
        "name": "Teste Flutter 4",
        "price": 3000.0,
        "brand": 2,
        "category": 1,
        "description": "Eae"
      }),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> updateProduct() async {
    int id = 9;
    final response = await http.put(
      Uri.parse('$urlProduct$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
      body: jsonEncode({
        "name": "Teste Flutter 5",
        "price": 2000.0,
        "brand": 2,
        "category": 1,
        "description": "Eae"
      }),
    );
    return response;
  }

  Future<http.Response> deleteProduct() async {
    int id = 8;
    final response = http.delete(
      Uri.parse('$urlProduct$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
    );
    return response;
  }
}
