import 'package:ecommerce_system_design/organisms/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce_system_design/molecules/cart_item.dart';
import 'package:ecommerce_system_design/atoms/custom_divider.dart';

void main() {
  testWidgets(
    'CartList renders correct number of items and uses cartItemBuilder',
    (WidgetTester tester) async {
      final data = ['Item 1', 'Item 2', 'Item 3'];
      int buildCount = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              height: 500,
              child: CartList<String>(
                data: data,
                cartItemBuilder: (context, item) {
                  buildCount++;
                  return CartItem(title: item);
                },
              ),
            ),
          ),
        ),
      );

      // Verifica que se renderizan todos los textos
      for (final item in data) {
        expect(find.text(item), findsOneWidget);
      }

      // Verifica que se construyeron 3 widgets con el builder
      expect(buildCount, data.length);

      // Verifica que hay CustomDivider para cada item
      expect(find.byType(CustomDivider), findsNWidgets(data.length));
    },
  );

  testWidgets('CartList without cartItemBuilder shows default CartItem', (
    WidgetTester tester,
  ) async {
    final data = ['a', 'b'];

    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: CartList<String>(data: data))),
    );

    // Verifica que aparecen 2 CartItem (uno por cada item)
    expect(find.byType(CartItem), findsNWidgets(data.length));

    // También debe haber 2 CustomDivider
    expect(find.byType(CustomDivider), findsNWidgets(data.length));
  });
}
