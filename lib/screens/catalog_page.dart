import 'package:flutter/material.dart';
import 'shoe_detail_page.dart';
import 'add_shoe_page.dart';
import '../models/shoe.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
                      setState(() {
                        shoes.add(shoe);
                      });
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
              trailing: IconButton(
                icon: Icon(
                  shoes[index].isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: shoes[index].isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  setState(() {
                    shoes[index].isFavorite = !shoes[index].isFavorite;
                  });
                },
              ),
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
