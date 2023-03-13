import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/store/add_product.store.dart';

class AddCategoryPage extends StatefulWidget {
  const AddCategoryPage({super.key});

  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<AddProductStore>();
    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Categoria'), actions: [
        TextButton(
          child: const Text('Salvar'),
          onPressed: () {},
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20),
              child: Center(
                child: Text(
                  'Adicione a nova Categoria',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            const Text('Nome:'),
            TextFormField(
              controller: store.controllerCategoryName,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton.icon(
                  onPressed: () => store.postCategory(),
                  icon: const Icon(Icons.add),
                  label: const Text('Salvar')),
            )
          ],
        ),
      ),
    );
  }
}
