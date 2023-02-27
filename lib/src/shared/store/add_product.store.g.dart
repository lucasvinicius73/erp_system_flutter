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

  late final _$dropdownValueAtom =
      Atom(name: '_AddProductStore.dropdownValue', context: context);

  @override
  String get dropdownValue {
    _$dropdownValueAtom.reportRead();
    return super.dropdownValue;
  }

  @override
  set dropdownValue(String value) {
    _$dropdownValueAtom.reportWrite(value, super.dropdownValue, () {
      super.dropdownValue = value;
    });
  }

  late final _$_AddProductStoreActionController =
      ActionController(name: '_AddProductStore', context: context);

  @override
  void changeDropdown(String? value) {
    final _$actionInfo = _$_AddProductStoreActionController.startAction(
        name: '_AddProductStore.changeDropdown');
    try {
      return super.changeDropdown(value);
    } finally {
      _$_AddProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerName: ${controllerName},
dropdownValue: ${dropdownValue}
    ''';
  }
}
