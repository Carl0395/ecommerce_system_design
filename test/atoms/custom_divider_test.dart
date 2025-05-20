import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomDivider renders with correct height and color', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: CustomDivider())),
    );

    final dividerFinder = find.byType(Divider);
    expect(dividerFinder, findsOneWidget);

    final dividerWidget = tester.widget<Divider>(dividerFinder);
    expect(dividerWidget.height, AppSpacing.dividerSpacing);
    expect(dividerWidget.color, AppColors.border);
  });
}
