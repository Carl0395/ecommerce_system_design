import 'package:ecommerce_system_design/atoms/custom_label_button.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomLabelButton renders with default text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomLabelButton())),
    );

    expect(find.text('Insert text'), findsOneWidget);

    final text = tester.widget<Text>(find.text('Insert text'));
    expect(
      text.style,
      AppTypography.button.copyWith(color: AppColors.primaryColor),
    );
  });

  testWidgets('CustomLabelButton renders with custom label', (
    WidgetTester tester,
  ) async {
    const customLabel = 'Click Me';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CustomLabelButton(label: customLabel)),
      ),
    );

    expect(find.text(customLabel), findsOneWidget);
  });

  testWidgets('CustomLabelButton triggers onTap callback', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomLabelButton(label: 'Tap me', onTap: () => tapped = true),
        ),
      ),
    );

    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    expect(tapped, isTrue);
  });
}
