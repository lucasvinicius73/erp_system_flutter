import 'dart:math';

import 'package:erp_system/src/stock/widgets/products_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../models/product_model.dart';
import '../shared/store/stock.store.dart';
import 'widgets/filter_dialog.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  late TextEditingController _controller;

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return const Filter();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.watch<StockStore>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 65,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_alt_outlined),
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: FutureBuilder<List<Product>?>(
                future: store.getProductsPage(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Product>?> snapshot) {
                  return Observer(builder: (_) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.terraempresas.com.br/blog/wp-content/uploads/2021/02/terra-empresas-produtos-mais-vendidos-na-internet-capa.png'),
                            ),
                            title: Text(
                              (store.products![index].title),
                            ),
                            subtitle: Text(store.products![index].price),
                            onTap: () {},
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      // ignore: avoid_print
                      print(snapshot.error);
                      return ListView(children: [
                        Column(children: [
                          const Icon(
                            Icons.error_outline,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text('Error: ${snapshot.error}'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            child: const Text('Tentar Novamente'),
                            onPressed: () {
                              setState(() {});
                            },
                          )
                        ]),
                      ]);
                    } else {
                      return Column(children: const [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircularProgressIndicator(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text('Awaiting result...'),
                        ),
                      ]);
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
