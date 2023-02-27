import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'add_product.store.g.dart';

class AddProductStore = _AddProductStore with _$AddProductStore;

abstract class _AddProductStore with Store {
  @observable
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerCost = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerQuantity = TextEditingController();

  List<String> list = <String>[
    'Celular Android',
    'Iphone',
    'Caixa de Som',
    'Fone de Ouvido',
    'Cabo'
  ];

  @observable
  late String dropdownValue = list.first;

  @action
  void changeDropdown(String? value) {
    if (value != null) {
      dropdownValue = value;
    }
  }

  // @action
  // void setProductsPage() async {
  //   Product product2 = Product(
  //     1,
  //     controllerName.text,
  //     controllerPrice.text,
  //     controllerCost.text,
  //     int.parse(controllerQuantity.text),
  //     controllerDescription.text,
  //     1,
  //     1,
  //   );
  //   product.title = controllerName.text;
  //   product.price = controllerPrice.text;
  //   product.cost = controllerCost.text;
  //   product.quantity = int.parse(controllerQuantity.text);
  //   product.description = controllerDescription.text;
  //   product.category = 1;
  //   product.batch = 1;
  //   service.setProduct(product2);
  // }
}
