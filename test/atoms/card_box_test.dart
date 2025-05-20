import 'package:ecommerce_system_design/atoms/card_box.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CardBox renders with default values', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: CardBox())));

    final containerFinder = find.byType(Container);

    expect(containerFinder, findsOneWidget);

    final containerWidget = tester.widget<Container>(containerFinder);
    final boxDecoration = containerWidget.decoration as BoxDecoration;

    // Verifica las dimensiones por defecto
    expect(containerWidget.constraints?.maxHeight ?? 100, 100);
    expect(containerWidget.constraints?.maxWidth ?? 100, 100);

    // Verifica el color por defecto
    expect(boxDecoration.color, AppColors.backgroundColor);

    // Verifica que tenga 2 sombras
    expect(boxDecoration.boxShadow?.length, 2);
  });

  testWidgets('CardBox renders with custom size, color and child', (
    WidgetTester tester,
  ) async {
    const customColor = Colors.red;
    const customHeight = 150.0;
    const customWidth = 200.0;
    const childText = Text('Hello');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CardBox(
            height: customHeight,
            width: customWidth,
            color: customColor,
            child: childText,
          ),
        ),
      ),
    );

    final containerFinder = find.byType(Container);
    final childFinder = find.text('Hello');

    expect(containerFinder, findsOneWidget);
    expect(childFinder, findsOneWidget);

    final containerWidget = tester.widget<Container>(containerFinder);
    final boxDecoration = containerWidget.decoration as BoxDecoration;

    // Verifica el color personalizado
    expect(boxDecoration.color, customColor);

    // Verifica que el hijo se haya renderizado
    expect(find.byWidget(childText), findsOneWidget);
  });
}
