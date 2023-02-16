import 'package:flutter/material.dart';

class ListPostings extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListPostings({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              leading: const Icon(Icons.point_of_sale),
              title: Text((title)),
              subtitle: Text('- $subtitle'),
              onTap: () {},
            ),
          );
        });
  }
}
