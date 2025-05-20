import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CircleButton renders with default values', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CircleButton())),
    );

    final containerFinder = find.byType(Container);
    final iconFinder = find.byIcon(Icons.shopping_cart_outlined);

    expect(containerFinder, findsOneWidget);
    expect(iconFinder, findsOneWidget);

    final container = tester.widget<Container>(containerFinder);
    final decoration = container.decoration as BoxDecoration;

    expect(container.constraints?.maxHeight ?? 50, 50);
    expect(container.constraints?.maxWidth ?? 50, 50);
    expect(decoration.color, AppColors.secondaryButton);
    expect(decoration.borderRadius, BorderRadius.circular(25));
  });

  testWidgets('CircleButton renders with custom values', (
    WidgetTester tester,
  ) async {
    const customSize = 80.0;
    const customIcon = Icons.favorite;
    const customColor = Colors.blue;
    const customIconColor = Colors.white;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CircleButton(
            size: customSize,
            icon: customIcon,
            color: customColor,
            iconColor: customIconColor,
          ),
        ),
      ),
    );

    final container = tester.widget<Container>(find.byType(Container));
    final decoration = container.decoration as BoxDecoration;

    expect(decoration.color, customColor);
    expect(decoration.borderRadius, BorderRadius.circular(customSize / 2));

    final icon = tester.widget<Icon>(find.byIcon(customIcon));
    expect(icon.color, customIconColor);
  });

  testWidgets('CircleButton triggers onTap callback', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CircleButton(
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    expect(tapped, isTrue);
  });
}
