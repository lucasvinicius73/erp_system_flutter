import 'package:flutter/material.dart';
import 'widgets/custom_tabbar.dart';

class CashBookPage extends StatefulWidget {
  const CashBookPage({super.key});

  @override
  State<CashBookPage> createState() => _CashBookPageState();
}

class _CashBookPageState extends State<CashBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Book'),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Adicionar Lançamento'),
        onPressed: () {
          Navigator.of(context).pushNamed('./entry');
        },
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 35, right: 20, left: 20),
            child: SizedBox(
              width: 500,
              child: Card(
                child: ListTile(
                  title: Text('Total Investido'),
                  subtitle: Text('Total investido em Produtos'),
                  trailing: Text(
                    '10.000,00',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CustomTabBar())
        ],
      ),
    );
  }
}
