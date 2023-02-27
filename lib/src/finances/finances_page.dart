import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../shared/store/finances.store.dart';
import 'widgets/pie_chart.dart';

class FinancesPage extends StatefulWidget {
  const FinancesPage({super.key});

  @override
  State<FinancesPage> createState() => _FinancesPageState();
}

class _FinancesPageState extends State<FinancesPage> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<FinancesStore>();
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  height: 350,
                  child: PieChartWidget(
                    'Faturamento',
                    dataList: store.getChartData(),
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

  TextStyle styleText = const TextStyle(fontSize: 22);
  TextStyle styleTitle = const TextStyle(fontSize: 30);
  // TextStyle LivroTile = const TextStyle(fontSize: 20, color: Colors.white);
  // TextStyle LivrosubTile = const TextStyle(fontSize: 15, color: Colors.white);
}
