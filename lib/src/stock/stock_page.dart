import 'package:erp_system/src/stock/products_list.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    //final store = Provider.of<StockStore>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                const Text('Filter'),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt_outlined)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: ListProducts())
          ],
        ),
      ),
    );
  }
}
