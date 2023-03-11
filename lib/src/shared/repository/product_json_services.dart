import 'package:dio/dio.dart';
import 'package:erp_system/src/shared/models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductJsonServices {
  final url = 'http://192.168.0.127:8000/stock/products/';
  final dio = Dio();
  String username = 'vini';
  String password = '120399';
  var auth = 'Basic dmluaToxMjAzOTk=';

  Future<List<Product>> getProducts() async {
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': auth},
    );
    Iterable body = json.decode(response.body);
    final products = body.map((model) => Product.fromJson(model)).toList();
    return products;
  }

  Future<http.Response> setProduct() async {
    final response = await http.post(
      Uri.parse(url),
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
      Uri.parse('$url$id/'),
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
    int id = 9;
    final response = http.delete(
      Uri.parse('$url$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
    );
    return response;
  }
}
