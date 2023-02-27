import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../shared/store/pages.store.dart';
import 'widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final store = Provider.of<PageStore>(context);
    final store = context.watch<PageStore>();
    return Observer(
        builder: (_) => Scaffold(
              drawer: const CustomDrawer(),
              appBar: AppBar(title: Text(store.title), actions: const []),
              body: Center(
                child: store.widgetOptions.elementAt(store.selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money),
                    label: 'Finances',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.point_of_sale),
                    label: 'Sales',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.inventory),
                    label: 'Stock',
                  ),
                ],
                currentIndex: store.selectedIndex,
                onTap: store.onItemTapped,
              ),
            ));
  }
}
