import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeDetailPage extends StatelessWidget {
  final Shoe shoe;

  const ShoeDetailPage({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(shoe.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(shoe.imageUrl, height: 200),
            const SizedBox(height: 20),
            Text(shoe.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(shoe.description),
            const SizedBox(height: 10),
            Text('${shoe.price.toStringAsFixed(0)} ₽',
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
