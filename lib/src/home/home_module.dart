import 'package:erp_system/src/home/home_page.dart';
import 'package:erp_system/src/stock/addProduct/add_product.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../stock/addProduct/addCategory/add_category_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute('/addproduct', child: (context, args) => const AddProduct()),
        ChildRoute('/addCategory',
            child: (context, args) => const AddCategoryPage()),
      ];
}
