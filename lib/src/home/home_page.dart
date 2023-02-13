import 'package:erp_system/src/sales/sale_page.dart';
import 'package:erp_system/src/stock/stock_page.dart';
import 'package:flutter/material.dart';
import '../finances/finances_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../shared/store/pages.store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _widgetOptions = <Widget>[
    FinancesPage(),
    SalePage(),
    StockPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PageStore>(context);
    return Observer(
        builder: (_) => Scaffold(
              drawer: const NavigationDrawer(children: []),
              appBar: AppBar(title: const Text('Estoque'), actions: const []),
              body: Center(
                child: _widgetOptions.elementAt(store.selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.attach_money),
                      label: 'Finances',
                      backgroundColor: Colors.red),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.point_of_sale),
                      label: 'Sales',
                      backgroundColor: Colors.green),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.inventory),
                      label: 'Stock',
                      backgroundColor: Colors.pink)
                ],
                currentIndex: store.selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: store.onItemTapped,
              ),
            ));
  }
}
