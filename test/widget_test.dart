import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoe_catalog/main.dart'; // Импортируй свой основной файл

void main() {
  testWidgets('Shoe catalog page displays correctly',
      (WidgetTester tester) async {
    // Запускаем приложение
    await tester.pumpWidget(const ShoeCatalogApp());

    // Ищем наличие текста "Shoe Catalog"
    expect(find.text('Shoe Catalog'), findsOneWidget);

    // Ищем наличие хотя бы одной карточки товара (ListTile)
    expect(find.byType(ListTile), findsWidgets);
  });
}
