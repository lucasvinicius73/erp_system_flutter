import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/data_chart.dart';
import 'widgets/pie_chart.dart';

class FinancesPage extends StatefulWidget {
  const FinancesPage({super.key});

  @override
  State<FinancesPage> createState() => _FinancesPageState();
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class _FinancesPageState extends State<FinancesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center(
            //     child: Text(
            //   'Faturamento',
            //   style: styleTitle,
            // )),
            Center(
              child: SizedBox(
                  height: 350,
                  child: PieChartWidget(
                    'Faturamento',
                    dataList: _getChartData(),
                  )),
            ),
            Center(
              child: SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Faturado no Mês: 10.000,00',
                        style: styleText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Total Faturado no Ano: 30.000,00',
                        style: styleText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Faturamento Medio por mês: 12.000,00',
                        style: styleText,
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsetsDirectional.only(start: 25))),
              icon: const Icon(Icons.point_of_sale),
              label: const ListTile(
                title: Text(
                  'Livro Caixa',
                ),
                subtitle: Text(
                  'Entradas e Saidas',
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/cashbook/');
              },
            )
          ],
        ),
      ),
    ]);
  }

  List<DataChart> _getChartData() {
    final List<DataChart> chartData = [
      DataChart('Anual', 30000),
      DataChart('Mensal', 10000),
      DataChart('Media', 12000),
    ];
    return chartData;
  }

  TextStyle styleText = const TextStyle(fontSize: 22);
  TextStyle styleTitle = const TextStyle(fontSize: 30);
  // TextStyle LivroTile = const TextStyle(fontSize: 20, color: Colors.white);
  // TextStyle LivrosubTile = const TextStyle(fontSize: 15, color: Colors.white);
}
