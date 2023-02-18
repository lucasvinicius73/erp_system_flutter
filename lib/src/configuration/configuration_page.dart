import 'package:erp_system/src/shared/store/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>();
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Configuration '),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Configuration',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              Text(
                'Tema',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              RadioListTile<ThemeMode>(
                value: ThemeMode.system,
                groupValue: appStore.themeMode,
                title: const Text('Sistema'),
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile<ThemeMode>(
                value: ThemeMode.light,
                groupValue: appStore.themeMode,
                title: const Text('Light'),
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: appStore.themeMode,
                title: const Text('Dark'),
                onChanged: appStore.changeThemeMode,
              ),
              const SizedBox(height: 20),
              Text(
                'Controle de dados',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                child: const Text('Apagar Cache e reiniciar o app'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
