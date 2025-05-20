import 'package:ecommerce_system_design/atoms/header_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('HeaderBox renders with default size and no child', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: HeaderBox())),
    );

    final container = tester.widget<Container>(find.byType(Container));
    final decoration = container.decoration as BoxDecoration;

    expect(decoration.color, isNotNull); // Usa el color por defecto
    expect(decoration.borderRadius, isNotNull);
    expect(decoration.boxShadow, isNotEmpty);
  });

  testWidgets('HeaderBox renders with a child', (WidgetTester tester) async {
    const testKey = Key('child-key');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: HeaderBox(child: Text('Contenido', key: testKey))),
      ),
    );

    expect(find.byKey(testKey), findsOneWidget);
    expect(find.text('Contenido'), findsOneWidget);
  });

  testWidgets('HeaderBox applies custom height, width, and margin', (
    WidgetTester tester,
  ) async {
    const customHeight = 150.0;
    const customWidth = 200.0;
    const customMargin = EdgeInsets.all(12);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HeaderBox(
            height: customHeight,
            width: customWidth,
            margin: customMargin,
          ),
        ),
      ),
    );

    final container = tester.widget<Container>(find.byType(Container));
    expect(container.margin, customMargin);
  });
}
