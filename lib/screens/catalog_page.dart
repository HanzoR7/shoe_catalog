import 'package:flutter/material.dart';
import 'shoe_detail_page.dart';
import '../models/shoe.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Каталог обуви')),
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
