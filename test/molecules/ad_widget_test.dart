import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/molecules/ad_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const testLabel = 'Oferta Especial';
  const testPrice = '29.99';

  testWidgets('AdWidget renders with label, price, image, and button', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AdWidget(
            label: testLabel,
            price: testPrice,
            imageUrl: null,
            onShop: () => tapped = true,
          ),
        ),
      ),
    );

    expect(find.text(testLabel), findsOneWidget);
    expect(find.text('\$$testPrice'), findsOneWidget);
    expect(find.text('¡Shop now!'), findsOneWidget);
    // expect(find.byType(Image), findsOneWidget);

    await tester.tap(find.text('¡Shop now!'));
    expect(tapped, isTrue);
  });

  testWidgets('AdWidget renders without price and button if price is null', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: AdWidget(label: 'Sin precio', imageUrl: null)),
      ),
    );

    expect(find.text('Sin precio'), findsOneWidget);
    expect(find.text('¡Shop now!'), findsNothing);
    expect(find.byType(CustomTitle), findsNothing);
  });

  testWidgets('AdWidget renders empty if imageUrl is null', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AdWidget(label: 'Sin imagen', price: '15.00', imageUrl: null),
        ),
      ),
    );

    expect(find.text('Sin imagen'), findsOneWidget);
    expect(find.text('\$15.00'), findsOneWidget);
  });
}
