import 'package:erp_system/src/shared/models/brand_model.dart';
import 'package:erp_system/src/shared/models/category_model.dart';
import 'package:erp_system/src/shared/models/product_model.dart';
import 'package:erp_system/src/shared/services/brand_jason_services.dart';
import 'package:erp_system/src/shared/services/category_json_services.dart';
import 'package:erp_system/src/shared/services/product_json_services.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'add_product.store.g.dart';

// ignore: library_private_types_in_public_api
class AddProductStore = _AddProductStore with _$AddProductStore;

abstract class _AddProductStore with Store {
  final serviceCategory = CategoryJsonServices();
  final serviceBrand = BrandJsonServices();
  final serviceProduct = ProductJsonServices();

  @observable
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerQuantity = TextEditingController();

  TextEditingController controllerCategoryName = TextEditingController();

  @observable
  List<CategoryModel> categorys = [];

  @observable
  List<Brand> brands = [];

  @observable
  CategoryModel dropdownValueCategory = CategoryModel(1, 'teste');
  @observable
  Brand dropdownValueBrand = Brand(1, 'teste');

  @action
  void changeDropdownCategory(CategoryModel? value) {
    if (value != null) {
      dropdownValueCategory = value;
    }
  }

  @action
  void changeDropdownBrand(Brand? value) {
    if (value != null) {
      dropdownValueBrand = value;
    }
  }

  @action
  Future<List<CategoryModel>?> getCategorys() async {
    getBrands();
    categorys = await serviceCategory.getCategory();
    changeDropdownCategory(categorys[1]);
    // ignore: avoid_print
    print(dropdownValueCategory.name);
    return categorys;
  }

  @action
  Future<List<Brand>?> getBrands() async {
    brands = await serviceBrand.getBrand();
    changeDropdownBrand(brands[1]);
    // ignore: avoid_print
    print(dropdownValueBrand.name);
    return brands;
  }

  @action
  Future postProduct() async {
    Product product = Product(
      1,
      controllerName.text,
      double.parse(controllerPrice.text),
      dropdownValueBrand.id,
      controllerDescription.text,
      dropdownValueCategory.id,
    );
    serviceProduct.postProduct(product);
    // if (product2.name != 'name') {
    //   serviceProduct.postProduct(product2);
    // }
  }

  @action
  Future postCategory() async {
    CategoryModel category = CategoryModel(1, controllerCategoryName.text);
    serviceCategory.postCategory(category);
    serviceCategory.getCategory();
  }
}
