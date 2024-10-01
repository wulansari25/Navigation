import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('Vuna Bag By Jims Honey', 154000, 'assets/vuna_bag.webp'),
    Item('Fenny Bag By Jims Honey', 175000, 'assets/fenny_bag.jpg'),
    Item('Aira Bag Bay By Jims Honey', 75000, 'assets/aira_bag.jpeg'),
    Item('Tas Selempang Bag By Jims Honey', 149000, 'assets/tas_selempang.jpg'),
    Item('Selempang By Jims Honey', 145000, 'assets/selempang.jpg'),
    Item('Amour Bag By Jims Honey', 145000, 'assets/amour_bag.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}