import 'package:erp_system/src/models/product_model.dart';
import 'package:mobx/mobx.dart';
import '../../jason_placeholder_service.dart';
part 'stock.store.g.dart';

class StockStore = _StockStore with _$StockStore;

abstract class _StockStore with Store {
  final service = JsonPlaceholderService();

  // @observable
  // late TextEditingController controller = TextEditingController();

  Future<List<Product>> getProductsPage() async {
    List<Product> products = await service.getProducts();
    print(products[1].title);
    return products;
  }
}
