// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddProductStore on _AddProductStore, Store {
  late final _$controllerNameAtom =
      Atom(name: '_AddProductStore.controllerName', context: context);

  @override
  TextEditingController get controllerName {
    _$controllerNameAtom.reportRead();
    return super.controllerName;
  }

  @override
  set controllerName(TextEditingController value) {
    _$controllerNameAtom.reportWrite(value, super.controllerName, () {
      super.controllerName = value;
    });
  }

  late final _$categorysAtom =
      Atom(name: '_AddProductStore.categorys', context: context);

  @override
  List<CategoryModel> get categorys {
    _$categorysAtom.reportRead();
    return super.categorys;
  }

  @override
  set categorys(List<CategoryModel> value) {
    _$categorysAtom.reportWrite(value, super.categorys, () {
      super.categorys = value;
    });
  }

  late final _$brandsAtom =
      Atom(name: '_AddProductStore.brands', context: context);

  @override
  List<Brand> get brands {
    _$brandsAtom.reportRead();
    return super.brands;
  }

  @override
  set brands(List<Brand> value) {
    _$brandsAtom.reportWrite(value, super.brands, () {
      super.brands = value;
    });
  }

  late final _$dropdownValueCategoryAtom =
      Atom(name: '_AddProductStore.dropdownValueCategory', context: context);

  @override
  CategoryModel get dropdownValueCategory {
    _$dropdownValueCategoryAtom.reportRead();
    return super.dropdownValueCategory;
  }

  @override
  set dropdownValueCategory(CategoryModel value) {
    _$dropdownValueCategoryAtom.reportWrite(value, super.dropdownValueCategory,
        () {
      super.dropdownValueCategory = value;
    });
  }

  late final _$dropdownValueBrandAtom =
      Atom(name: '_AddProductStore.dropdownValueBrand', context: context);

  @override
  Brand get dropdownValueBrand {
    _$dropdownValueBrandAtom.reportRead();
    return super.dropdownValueBrand;
  }

  @override
  set dropdownValueBrand(Brand value) {
    _$dropdownValueBrandAtom.reportWrite(value, super.dropdownValueBrand, () {
      super.dropdownValueBrand = value;
    });
  }

  late final _$getCategorysAsyncAction =
      AsyncAction('_AddProductStore.getCategorys', context: context);

  @override
  Future<List<CategoryModel>?> getCategorys() {
    return _$getCategorysAsyncAction.run(() => super.getCategorys());
  }

  late final _$getBrandsAsyncAction =
      AsyncAction('_AddProductStore.getBrands', context: context);

  @override
  Future<List<Brand>?> getBrands() {
    return _$getBrandsAsyncAction.run(() => super.getBrands());
  }

  late final _$postProductAsyncAction =
      AsyncAction('_AddProductStore.postProduct', context: context);

  @override
  Future<dynamic> postProduct() {
    return _$postProductAsyncAction.run(() => super.postProduct());
  }

  late final _$_AddProductStoreActionController =
      ActionController(name: '_AddProductStore', context: context);

  @override
  void changeDropdownCategory(CategoryModel? value) {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.changeDropdownCategory');
    try {
      return super.changeDropdownCategory(value);
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDropdownBrand(Brand? value) {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.changeDropdownBrand');
    try {
      return super.changeDropdownBrand(value);
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerName: ${controllerName},
categorys: ${categorys},
brands: ${brands},
dropdownValueCategory: ${dropdownValueCategory},
dropdownValueBrand: ${dropdownValueBrand}
    ''';
  }
}
