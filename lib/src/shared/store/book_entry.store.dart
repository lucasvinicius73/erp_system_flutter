import 'package:mobx/mobx.dart';
part 'book_entry.store.g.dart';

class BookEntryStore = _BookEntryStore with _$BookEntryStore;

abstract class _BookEntryStore with Store {
  List<String> list = <String>['Combustivel', 'Comida', 'Mobilia', 'Imposto'];

  @observable
  late String dropdownValue = list.first;

  @action
  void changeDropdown(String? value) {
    if (value != null) {
      dropdownValue = value;
    }
  }
}
