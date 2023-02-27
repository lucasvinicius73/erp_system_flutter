import 'package:dio/dio.dart';
import 'package:erp_system/src/models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JsonPlaceholderService {
  final url = 'http://192.168.0.127:8000/api/v1/products';
  final dio = Dio();
  String username = 'lucas';
  String password = '120399';
  var auth = 'Basic bHVjYXM6MTIwMzk5';

  Future<List<Product>> getProducts() async {
    // await dio.post(url,
    //     // data: {'param': param},
    //     options: Options(headers: <String, String>{'authorization': auth}));
    // final response = await dio.get(url);
    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'authorization': auth},
    );
    Iterable body = json.decode(response.body);
    final products = body.map((model) => Product.fromJson(model)).toList();
    return products;
  }

  Future<http.Response> setProduct(Product product) async {
    print('Iniciando Post');
    return await http.post(
      Uri.parse(url),
      headers: <String, String>{'authorization': auth},
      body: {
        "name": "Teste Flutter",
        "price": "1500.00",
        "cost": "1200.00",
        "quantity": 5,
        "description": "Iphone antiguin hjhjk",
        "category": 1,
        "batch": 1
      },
    );
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    // return response;
  }
}
