import 'package:erp_system/src/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/store/stock.store.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StockStore>(context);
    return FutureBuilder<List<Product>>(
      future: store.getProductsPage(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.hasData) {
          var products = snapshot.data;
          return ListView.builder(
            itemCount: products?.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.terraempresas.com.br/blog/wp-content/uploads/2021/02/terra-empresas-produtos-mais-vendidos-na-internet-capa.png'),
                ),
                title: Text((products![index].title),
                    style:
                        const TextStyle(fontSize: 20.0, color: Colors.black)),
                subtitle: Text(products[index].price),
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
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            ),
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
    );
  }
}
