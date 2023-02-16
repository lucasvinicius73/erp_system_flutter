import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> with RestorationMixin {
  final RestorableIntN _indexSelected = RestorableIntN(null);

  @override
  String get restorationId => 'choice_chip_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_indexSelected, 'choice_chip');
  }

  @override
  void dispose() {
    _indexSelected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(children: [
        const SizedBox(
          height: 70,
          child: Center(child: Text('Filter')),
        ),
        const Divider(thickness: 1),
        Expanded(
            child: Column(
          children: [
            Wrap(
              children: [
                ChoiceChip(
                  label: const Text('Celular'),
                  selected: _indexSelected.value == 0,
                  onSelected: (value) {
                    setState(() {
                      _indexSelected.value = value ? 0 : -1;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                ChoiceChip(
                  label: const Text('Caixa de Som'),
                  selected: _indexSelected.value == 1,
                  onSelected: (value) {
                    setState(() {
                      _indexSelected.value = value ? 1 : -1;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                ChoiceChip(
                  label: const Text('Cabos'),
                  selected: _indexSelected.value == 2,
                  onSelected: (value) {
                    setState(() {
                      _indexSelected.value = value ? 2 : -1;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ))
      ]),
    );
  }
}
