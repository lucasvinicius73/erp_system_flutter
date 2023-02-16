import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FinancesPage extends StatefulWidget {
  const FinancesPage({super.key});

  @override
  State<FinancesPage> createState() => _FinancesPageState();
}

class _FinancesPageState extends State<FinancesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            'Faturamento',
            style: styleTitle,
          )),
          Center(
            child: SizedBox(
              height: 250,
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                imageUrl:
                    'https://lh3.googleusercontent.com/g0Jw-I6-gH2DVCpnl3u8QKZVT_meR9lcJlpyeSZ-MyvwLnyEZvgyrY5frldA8HCv55s=w280',
              ),
            ),
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
    );
  }

  TextStyle styleText = const TextStyle(fontSize: 22);
  TextStyle styleTitle = const TextStyle(fontSize: 30);
  // TextStyle LivroTile = const TextStyle(fontSize: 20, color: Colors.white);
  // TextStyle LivrosubTile = const TextStyle(fontSize: 15, color: Colors.white);
}
