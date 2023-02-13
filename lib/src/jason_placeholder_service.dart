import 'package:dio/dio.dart';
import 'package:erp_system/src/models/product_model.dart';
import 'dart:convert';
import 'package:http/http.dart';

class JsonPlaceholderService {
  final url = 'http://127.0.0.1:8000/api/v1/products';
  final dio = Dio();
  String username = 'lucas';
  String password = '120399';
  var auth = 'Basic bHVjYXM6MTIwMzk5';

  Future<List<Product>> getProducts() async {
    // await dio.post(url,
    //     // data: {'param': param},
    //     options: Options(headers: <String, String>{'authorization': auth}));
    // final response = await dio.get(url);
    final response = await get(Uri.parse(url),
        headers: <String, String>{'authorization': auth});
    Iterable body = json.decode(response.body);
    final products = body.map((model) => Product.fromJson(model)).toList();
    return products;
  }
}
