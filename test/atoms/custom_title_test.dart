import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomTitle displays default text when none is provided', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomTitle())),
    );

    expect(find.text('Title'), findsOneWidget);
  });

  testWidgets('CustomTitle displays provided text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CustomTitle(text: 'Ofertas de hoy')),
      ),
    );

    expect(find.text('Ofertas de hoy'), findsOneWidget);
  });

  testWidgets('CustomTitle uses custom padding if provided', (
    WidgetTester tester,
  ) async {
    const customPadding = EdgeInsets.all(20);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomTitle(text: 'Con padding', padding: customPadding),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, customPadding);
  });

  testWidgets('CustomTitle applies display style from AppTypography', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomTitle(text: 'Estilo'))),
    );

    final textWidget = tester.widget<Text>(find.text('Estilo'));
    expect(textWidget.style, AppTypography.display);
  });
}
