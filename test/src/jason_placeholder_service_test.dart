import 'dart:convert';

import 'package:erp_system/src/jason_placeholder_service.dart';

void main() async {
  final service = JsonPlaceholderService();
  final products = await service.getProducts();
  print(products[0].description);
}
