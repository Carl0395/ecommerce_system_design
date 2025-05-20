import 'package:ecommerce_system_design/atoms/rating_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('RatingLabel renders with rate and count', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: RatingLabel(rate: '4.5', count: '150')),
      ),
    );

    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.text('4.5 '), findsOneWidget);
    expect(find.text('(150)'), findsOneWidget);
  });
}
