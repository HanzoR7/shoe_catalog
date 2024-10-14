import 'package:flutter/material.dart';
import 'package:shoe_catalog/screens/shoe_detail_page.dart';
import '../models/shoe.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Фильтруем только избранные товары
    final favoriteShoes = shoes.where((shoe) => shoe.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранное'),
      ),
      body: favoriteShoes.isEmpty
          ? const Center(child: Text('Нет избранных товаров'))
          : ListView.builder(
              itemCount: favoriteShoes.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset(favoriteShoes[index].imageUrl,
                        width: 50, height: 50),
                    title: Text(favoriteShoes[index].name),
                    subtitle: Text(
                        '${favoriteShoes[index].price.toStringAsFixed(0)} ₽'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ShoeDetailPage(shoe: favoriteShoes[index]),
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
