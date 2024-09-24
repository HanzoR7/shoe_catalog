import 'package:flutter/material.dart';
import 'screens/catalog_page.dart';

void main() {
  runApp(const ShoeCatalogApp());
}

class ShoeCatalogApp extends StatelessWidget {
  const ShoeCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Каталог обуви',
      home: CatalogPage(),
    );
  }
}
