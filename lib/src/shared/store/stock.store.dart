import 'package:erp_system/src/models/product_model.dart';
import 'package:mobx/mobx.dart';
import '../../jason_placeholder_service.dart';
part 'stock.store.g.dart';

class StockStore = _StockStore with _$StockStore;

abstract class _StockStore with Store {
  final service = JsonPlaceholderService();

  @observable
  List<Product> products = [];
  // late TextEditingController controller = TextEditingController();

  @action
  Future<List<Product>?> getProductsPage() async {
    products = await service.getProducts();
    print(products?[1].title);
    return products;
  }
}
