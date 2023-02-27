// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entry.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookEntryStore on _BookEntryStore, Store {
  late final _$dropdownValueAtom =
      Atom(name: '_BookEntryStore.dropdownValue', context: context);

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

  late final _$_BookEntryStoreActionController =
      ActionController(name: '_BookEntryStore', context: context);

  @override
  void changeDropdown(String? value) {
    final _$actionInfo = _$_BookEntryStoreActionController.startAction(
        name: '_BookEntryStore.changeDropdown');
    try {
      return super.changeDropdown(value);
    } finally {
      _$_BookEntryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dropdownValue: ${dropdownValue}
    ''';
  }
}
