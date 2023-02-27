import 'package:mobx/mobx.dart';

import '../../models/data_chart.dart';
part 'finances.store.g.dart';

class FinancesStore = _FinancesStore with _$FinancesStore;

abstract class _FinancesStore with Store {
  List<DataChart> getChartData() {
    final List<DataChart> chartData = [
      DataChart('Anual', 30000),
      DataChart('Mensal', 10000),
      DataChart('Media', 12000),
    ];
    return chartData;
  }
}
