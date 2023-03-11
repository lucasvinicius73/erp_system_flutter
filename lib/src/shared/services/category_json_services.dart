import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/category_model.dart';
import 'json_services.dart';

class CategoryJsonServices extends JsonServices {
  late String urlCategory;
  CategoryJsonServices(){
    urlCategory = '${url}categorys/';
  }

  Future<List<CategoryModel>> getCategory() async {
    final response = await http.get(
      Uri.parse(urlCategory),
      headers: <String, String>{'authorization': auth},
    );
    Iterable body = json.decode(response.body);
    final categorys = body.map((model) => CategoryModel.fromJson(model)).toList();
    return categorys;
  }

  Future<http.Response> setProduct() async {
    final response = await http.post(
      Uri.parse(urlCategory),
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
      Uri.parse('$urlCategory$id/'),
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
      Uri.parse('$urlCategory$id/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth
      },
    );
    return response;
  }
}
