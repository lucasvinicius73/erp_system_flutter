import 'package:erp_system/src/configuration/configuration_page.dart';
import 'package:erp_system/src/finances/cashbook/cashbook_module.dart';
import 'package:erp_system/src/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
      ];
}
