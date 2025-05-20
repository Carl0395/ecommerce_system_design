import 'package:ecommerce_system_design/organisms/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ProductsGrid no muestra elementos si items es null', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: ProductsGrid<String>())),
    );

    expect(find.byType(GridView), findsOneWidget);
    expect(find.byType(Text), findsNothing);
  });

  testWidgets('ProductsGrid no muestra elementos si items está vacío', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: ProductsGrid<String>(items: []))),
    );

    expect(find.byType(GridView), findsOneWidget);
    expect(find.byType(Text), findsNothing);
  });

  testWidgets('ProductsGrid renderiza elementos correctamente', (
    WidgetTester tester,
  ) async {
    final items = ['Producto 1', 'Producto 2'];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductsGrid<String>(
            items: items,
            itemBuilder: (context, item) {
              return Text(item);
            },
          ),
        ),
      ),
    );

    for (final item in items) {
      expect(find.text(item), findsOneWidget);
    }
  });

  testWidgets('ProductsGrid usa el itemBuilder para cada item', (
    WidgetTester tester,
  ) async {
    final items = [1, 2, 3];
    final builtItems = <int>[];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductsGrid<int>(
            items: items,
            itemBuilder: (context, item) {
              builtItems.add(item);
              return Text('Item $item');
            },
          ),
        ),
      ),
    );

    expect(builtItems.length, items.length);
    for (final item in items) {
      expect(find.text('Item $item'), findsOneWidget);
    }
  });
}
