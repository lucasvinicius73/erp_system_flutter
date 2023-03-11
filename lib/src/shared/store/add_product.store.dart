import 'package:erp_system/src/shared/models/category_model.dart';
import 'package:erp_system/src/shared/services/category_json_services.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'add_product.store.g.dart';

// ignore: library_private_types_in_public_api
class AddProductStore = _AddProductStore with _$AddProductStore;

abstract class _AddProductStore with Store {
  final service = CategoryJsonServices();
  @observable
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerCost = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerQuantity = TextEditingController();

  @observable
  List<CategoryModel> categorys = [];

  @observable
  CategoryModel dropdownValue = CategoryModel(1, 'teste');

  @action
  void changeDropdown(CategoryModel? value) {
    if (value != null) {
      dropdownValue = value;
    }
  }

  @action
  Future<List<CategoryModel>?> getCategorys() async {
    categorys = await service.getCategory();
    changeDropdown(categorys[1]);
    // ignore: avoid_print
    print(dropdownValue.name);
    return categorys;
  }
}
