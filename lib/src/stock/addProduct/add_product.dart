import 'package:erp_system/src/shared/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/models/brand_model.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Produto'),
        actions: [
          TextButton(
            child: const Text('Salvar'),
            onPressed: () {
              store.postProduct();
            },
          )
        ],
      ),
      body: Padding(
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
            FutureBuilder<List<CategoryModel>?>(
                future: store.getCategorys(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<CategoryModel>?> snapshot) {
                  return Observer(builder: (_) {
                    if (snapshot.hasData) {
                      return Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                'Categoria:',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DropdownButton<CategoryModel>(
                                value: store.dropdownValueCategory,
                                icon: Icon(Icons.arrow_downward,
                                    color: Theme.of(context)
                                        .buttonTheme
                                        .colorScheme!
                                        .primary),
                                elevation: 10,
                                underline: Container(
                                  height: 2,
                                  color: Theme.of(context)
                                      .buttonTheme
                                      .colorScheme!
                                      .primary,
                                ),
                                onChanged: store.changeDropdownCategory,
                                items: store.categorys
                                    .map<DropdownMenuItem<CategoryModel>>(
                                        (CategoryModel value) {
                                  return DropdownMenuItem<CategoryModel>(
                                    value: value,
                                    child: Text(
                                      value.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Marca:',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              DropdownButton<Brand>(
                                value: store.dropdownValueBrand,
                                icon: Icon(Icons.arrow_downward,
                                    color: Theme.of(context)
                                        .buttonTheme
                                        .colorScheme!
                                        .primary),
                                elevation: 10,
                                underline: Container(
                                  height: 2,
                                  color: Theme.of(context)
                                      .buttonTheme
                                      .colorScheme!
                                      .primary,
                                ),
                                onChanged: store.changeDropdownBrand,
                                items: store.brands
                                    .map<DropdownMenuItem<Brand>>(
                                        (Brand value) {
                                  return DropdownMenuItem<Brand>(
                                    value: value,
                                    child: Text(
                                      value.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
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
                                    store.postProduct();

                                    //store.setProductsPage();
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      // ignore: avoid_print
                      print(snapshot.error);
                      return Center(
                        child: Column(children: [
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
                      );
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
                }),
          ],
        ),
      ),
    );
  }
}
