import 'package:erp_system/src/finances/cashbook/cashbook_module.dart';
import 'package:erp_system/src/shared/store/app_store.dart';
import 'package:erp_system/src/shared/store/pages.store.dart';
import 'package:erp_system/src/shared/store/stock.store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'configuration/configuration_page.dart';
import 'home/home_module.dart';

class AppModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
        AutoBind.singleton(AppStore.new),
        AutoBind.singleton(PageStore.new),
        AutoBind.singleton(StockStore.new),
      ];
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/cashbook', module: CashBookModule()),
        ChildRoute('/config',
            child: (context, args) => const ConfigurationPage())
      ];
}
