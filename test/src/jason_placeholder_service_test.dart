import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:erp_system/src/shared/models/brand_model.dart';
import 'package:erp_system/src/shared/models/category_model.dart';
import 'package:erp_system/src/shared/services/brand_jason_services.dart';
import 'package:erp_system/src/shared/services/category_json_services.dart';
import 'package:erp_system/src/shared/services/product_json_services.dart';
import 'package:erp_system/src/shared/models/product_model.dart';

void main() async {
  print('Iniciando Teste');
  final serviceProduct = ProductJsonServices();
  final serviceCategory = CategoryJsonServices();
  final serviceBrand = BrandJsonServices();


  List<Product> products = await serviceProduct.getProducts();
  List<CategoryModel> categorys = await serviceCategory.getCategory();
  List<Brand> brands = await serviceBrand.getBrand();


  final responseProduct = serviceProduct.getProducts();
  final responseCategory = serviceCategory.getCategory();
  final responseBrand = serviceBrand.getBrand();

  print(products[1].name);
  print(categorys[1].name);
  print(brands[1].name);
}
