import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'cashbook.store.g.dart';

class CashBookStore = _CashBookStore with _$CashBookStore;

abstract class _CashBookStore with Store {

  @observable
  TabController? tabController;
  final RestorableInt tabIndex = RestorableInt(0);
  
  String? get restorationId => 'tab_scrollable_demo';

  void changeControllerTab(){
    tabController!.index = tabIndex.value;
  }


}
