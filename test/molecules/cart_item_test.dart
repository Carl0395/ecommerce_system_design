import 'package:ecommerce_system_design/molecules/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testId = 'abc123';
  const testTitle = 'Zapatos deportivos';
  const testPrice = '49.99';
  const testCount = 2;

  testWidgets('CartItem displays title, id, price and counter', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CartItem(
            id: testId,
            title: testTitle,
            price: testPrice,
            urlImage: null,
            count: testCount,
          ),
        ),
      ),
    );

    expect(find.text(testTitle), findsOneWidget);
    expect(find.text('ID: $testId'), findsOneWidget);
    expect(find.text('\$$testPrice'), findsOneWidget);
  });

  testWidgets('CartItem renders placeholder when no image', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CartItem(title: 'Producto sin imagen')),
      ),
    );

    expect(find.text('Photo'), findsOneWidget);
  });

  testWidgets('CartItem uses default values when fields are null', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CartItem())),
    );

    expect(find.text('Lorem ipsum dolor'), findsOneWidget);
    expect(find.text('ID: 1'), findsOneWidget);
    expect(find.text('\$0000'), findsOneWidget);
  });
}
