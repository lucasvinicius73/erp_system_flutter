import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/store/add_product.store.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<AddProductStore>();

    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Produto'),
          actions: [
            TextButton(
              child: const Text('Salvar'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                  child: Center(
                    child: Text(
                      'Adicione o Produto',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                Text(
                  'Nome:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: store.controllerName,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Preço:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: store.controllerPrice,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Custo:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: store.controllerCost,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Quantidade:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: store.controllerQuantity,
                  decoration: const InputDecoration(
                      labelText: 'Digite a quantidade de Produtos'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Categoria:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                DropdownButton<String>(
                  value: store.dropdownValue,
                  icon: Icon(Icons.arrow_downward,
                      color:
                          Theme.of(context).buttonTheme.colorScheme!.primary),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).buttonTheme.colorScheme!.primary,
                  ),
                  onChanged: store.changeDropdown,
                  items:
                      store.list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Descrição (Opcional):',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: store.controllerDescription,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('Salvar'),
                    onPressed: () {
                      Navigator.pop(context);
                      //store.setProductsPage();
                    },
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
