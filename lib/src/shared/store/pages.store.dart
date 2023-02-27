import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../finances/finances_page.dart';
import '../../sales/sale_page.dart';
import '../../stock/stock_page.dart';

part 'pages.store.g.dart';

// ignore: library_private_types_in_public_api
class PageStore = _PageStore with _$PageStore;

abstract class _PageStore with Store {
  List<Widget> widgetOptions = <Widget>[
    const FinancesPage(),
    const SalePage(),
    const StockPage(),
  ];

  @observable
  String title = 'Finanças';

  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
    if (index == 0) {
      title = 'Finanças';
    }
    if (index == 1) {
      title = 'Vendas';
    }
    if (index == 2) {
      title = 'Estoque';
    }
  }
}
