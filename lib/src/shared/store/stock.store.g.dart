// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StockStore on _StockStore, Store {
  late final _$productAtom =
      Atom(name: '_StockStore.product', context: context);

  @override
  Product get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(Product value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$productsAtom =
      Atom(name: '_StockStore.products', context: context);

  @override
  List<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$getProductsPageAsyncAction =
      AsyncAction('_StockStore.getProductsPage', context: context);

  @override
  Future<List<Product>?> getProductsPage() {
    return _$getProductsPageAsyncAction.run(() => super.getProductsPage());
  }

  @override
  String toString() {
    return '''
product: ${product},
products: ${products}
    ''';
  }
}
