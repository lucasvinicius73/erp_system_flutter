// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PageStore on _PageStore, Store {
  late final _$titleAtom = Atom(name: '_PageStore.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_PageStore.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$_PageStoreActionController =
      ActionController(name: '_PageStore', context: context);

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_PageStoreActionController.startAction(
        name: '_PageStore.onItemTapped');
    try {
      return super.onItemTapped(index);
    } finally {
      _$_PageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
selectedIndex: ${selectedIndex}
    ''';
  }
}
