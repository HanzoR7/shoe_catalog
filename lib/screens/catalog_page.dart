import 'package:flutter/material.dart';
import 'shoe_detail_page.dart';
import 'add_shoe_page.dart'; // Импортируй новую страницу
import '../models/shoe.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог обуви'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddShoePage(
                    onAddShoe: (shoe) {
                      // Обновить список обуви
                      shoes.add(shoe);
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading:
                  Image.asset(shoes[index].imageUrl, width: 50, height: 50),
              title: Text(shoes[index].name),
              subtitle: Text('${shoes[index].price.toStringAsFixed(0)} ₽'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoeDetailPage(shoe: shoes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
