import 'package:erp_system/src/shared/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../services/product_json_services.dart';
part 'stock.store.g.dart';

// ignore: library_private_types_in_public_api
class StockStore = _StockStore with _$StockStore;

abstract class _StockStore with Store {
  final service = ProductJsonServices();

  @observable
  late Product product;

  @observable
  List<Product> products = [];
  TextEditingController controller = TextEditingController();

  @action
  Future<List<Product>?> getProductsPage() async {
    products = await service.getProducts();
    // ignore: avoid_print
    print(products[1].name);
    return products;
  }
}
