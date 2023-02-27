import 'package:erp_system/src/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/store/stock.store.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.watch<StockStore>();
    return Observer(
        builder: (_) => FutureBuilder<List<Product>?>(
              future: store.getProductsPage(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Product>?> snapshot) {
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
                          (store.products[index].title),
                        ),
                        subtitle: Text(store.products[index].price),
                        onTap: () {},
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  // ignore: avoid_print
                  print(snapshot.error);
                  return Column(children: [
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
                        store.getProductsPage();
                      },
                    )
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
              },
            ));
  }
}
