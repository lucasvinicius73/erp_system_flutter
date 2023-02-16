import 'package:erp_system/src/finances/cashbook/widgets/list_postings.dart';
import 'package:flutter/material.dart';

class CashBookPage extends StatefulWidget {
  const CashBookPage({super.key});

  @override
  State<CashBookPage> createState() => _CashBookPageState();
}

class _CashBookPageState extends State<CashBookPage>
    with SingleTickerProviderStateMixin, RestorationMixin {
  TabController? _tabController;
  final RestorableInt tabIndex = RestorableInt(0);
  @override
  // TODO: implement restorationId
  String? get restorationId => 'tab_scrollable_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(tabIndex, 'tab_index');
    _tabController!.index = tabIndex.value;
  }

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 12,
      vsync: this,
    );
    _tabController!.addListener(() {
      // When the tab controller's value is updated, make sure to update the
      // tab index value, which is state restorable.
      setState(() {
        tabIndex.value = _tabController!.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    tabIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Book'),
        actions: const [],
      ),
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, right: 20, left: 20),
            child: SizedBox(
              width: 500,
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: ListTile(
                  title: Text('Total Investido'),
                  subtitle: Text('Total investido em Produtos'),
                  trailing: Text(
                    '10.000,00',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TabBar(controller: _tabController, isScrollable: true, tabs: const [
            Text('Janeiro'),
            Text('Fevereiro'),
            Text('Março'),
            Text('Abril'),
            Text('Maio'),
            Text('Junho'),
            Text('Julho'),
            Text('Agosto'),
            Text('Setembro'),
            Text('Outubro'),
            Text('Novembro'),
            Text('Dezembro'),
          ]),
          Expanded(
            child: Center(
              child: TabBarView(controller: _tabController, children: const [
                ListPostings(
                  title: 'Produtos 1',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 2',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 3',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 4',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 5',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 6',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 7',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 8',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 9',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 10',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 11',
                  subtitle: '10.000,00',
                ),
                ListPostings(
                  title: 'Produtos 12',
                  subtitle: '10.000,00',
                ),
              ]),
            ),
          )
        ],
      )),
    );
  }
}
