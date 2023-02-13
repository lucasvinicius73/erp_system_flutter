import 'package:mobx/mobx.dart';

part 'pages.store.g.dart';

// ignore: library_private_types_in_public_api
class PageStore = _PageStore with _$PageStore;

abstract class _PageStore with Store {
  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
  }
}
