import 'package:erp_system/src/finances/cashbook/cashbook_module.dart';
import 'package:erp_system/src/shared/store/app_store.dart';
import 'package:erp_system/src/shared/store/finances.store.dart';
import 'package:erp_system/src/shared/store/pages.store.dart';
import 'package:erp_system/src/shared/store/stock.store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'configuration/configuration_page.dart';
import 'home/home_module.dart';
import 'shared/store/add_product.store.dart';
import 'shared/store/book_entry.store.dart';
import 'shared/store/cashbook.store.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        AutoBind.singleton(AppStore.new),
        AutoBind.singleton(PageStore.new),
        AutoBind.singleton(StockStore.new),
        AutoBind.singleton(AddProductStore.new),
        AutoBind.singleton(FinancesStore.new),
        AutoBind.singleton(CashBookStore.new),
        AutoBind.singleton(BookEntryStore.new),
      ];
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/cashbook', module: CashBookModule()),
        ChildRoute('/config',
            child: (context, args) => const ConfigurationPage()),
      ];
}
