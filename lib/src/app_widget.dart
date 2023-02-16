import 'package:erp_system/src/shared/store/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'shared/theme/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );
    return Observer(
        builder: (_) => MaterialApp.router(
              title: 'Flutter Demo',
              routerDelegate: Modular.routerDelegate,
              routeInformationParser: Modular.routeInformationParser,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: appStore.themeMode,
              debugShowCheckedModeBanner: false,
            ));
  }
}
