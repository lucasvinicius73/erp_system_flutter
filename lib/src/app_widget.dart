import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home/home_page.dart';
import 'shared/store/pages.store.dart';
import 'shared/store/stock.store.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PageStore>(
          create: (_) => PageStore(),
        ),
        Provider<StockStore>(
          create: (_) => StockStore(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
