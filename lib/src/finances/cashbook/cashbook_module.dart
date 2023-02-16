import 'package:flutter_modular/flutter_modular.dart';

import 'cashbook_page.dart';

class CashBookModule extends Module {
  @override
  // TODO: implement routes
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const CashBookPage())];
}
