import 'package:erp_system/src/jason_placeholder_service.dart';
import 'package:erp_system/src/models/product_model.dart';

void main() async {
  print('Iniciando Teste');
  Product product = Product(
    1,
    'Testando no app',
    '2000.00',
    'Testando no apizin',
    1,
    '1000.00',
    1,
    20,
  );
  final service = JsonPlaceholderService();
  final response = service.setProduct(product);
  // ignore: avoid_print
  print(response);
}
