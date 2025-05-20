import 'package:ecommerce_system_design/atoms/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomTextButton displays default text when none is provided', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomTextButton())),
    );

    expect(find.text('Text Button'), findsOneWidget);
  });

  testWidgets('CustomTextButton displays provided text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CustomTextButton(text: 'Comprar')),
      ),
    );

    expect(find.text('Comprar'), findsOneWidget);
  });

  testWidgets('CustomTextButton triggers onTap callback when tapped', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomTextButton(
            text: 'Tap Me',
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Tap Me'));
    await tester.pump();

    expect(tapped, isTrue);
  });

  testWidgets('CustomTextButton uses correct style and color', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CustomTextButton(text: 'Styled Button')),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Styled Button'));
    expect(textWidget.style?.color, Colors.white);
  });
}
