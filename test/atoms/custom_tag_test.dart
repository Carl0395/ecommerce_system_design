import 'package:ecommerce_system_design/atoms/custom_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomTag displays default label when none is provided', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomTag())),
    );

    expect(find.text('Label'), findsOneWidget);
  });

  testWidgets('CustomTag displays provided label', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomTag(label: 'Promo'))),
    );

    expect(find.text('Promo'), findsOneWidget);
  });

  testWidgets('CustomTag triggers onTap callback when tapped', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomTag(
            label: 'Click Me',
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Click Me'));
    await tester.pump(); // Procesa el gesto

    expect(tapped, isTrue);
  });

  testWidgets('CustomTag applies custom text style', (
    WidgetTester tester,
  ) async {
    const customStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomTag(label: 'Styled', textStyle: customStyle),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Styled'));
    expect(textWidget.style?.fontSize, customStyle.fontSize);
    expect(textWidget.style?.fontWeight, customStyle.fontWeight);
  });
}
