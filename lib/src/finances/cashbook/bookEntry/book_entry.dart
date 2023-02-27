import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/store/book_entry.store.dart';

class JournalEntry extends StatefulWidget {
  const JournalEntry({super.key});

  @override
  State<JournalEntry> createState() => _JournalEntryState();
}

class _JournalEntryState extends State<JournalEntry> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<BookEntryStore>();
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Lançamento'),
          actions: [
            TextButton(
              child: const Text('Salvar'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                child: Center(
                  child: Text(
                    'Adicione o Lançamento',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              Text(
                'Nome:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const TextField(),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Custo:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const TextField(),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Categoria:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              DropdownButton<String>(
                value: store.dropdownValue,
                icon: Icon(Icons.arrow_downward,
                    color: Theme.of(context).buttonTheme.colorScheme!.primary),
                elevation: 16,
                underline: Container(
                  height: 2,
                  color: Theme.of(context).buttonTheme.colorScheme!.primary,
                ),
                onChanged: store.changeDropdown,
                items: store.list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Descrição (Opcional):',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const TextField(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Salvar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
