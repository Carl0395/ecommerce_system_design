import 'package:ecommerce_system_design/atoms/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Counter widget increments and decrements value and calls callbacks',
    (WidgetTester tester) async {
      int? incrementCalls;
      int? decrementCalls;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Counter(
              value: 5,
              onIncrement: () {
                incrementCalls = (incrementCalls ?? 0) + 1;
              },
              onDecrement: () {
                decrementCalls = (decrementCalls ?? 0) + 1;
              },
              fontSize: 20,
            ),
          ),
        ),
      );

      // Verifica valor inicial
      expect(find.text(' 5 '), findsOneWidget);

      // Toca el botón de incrementar (+)
      await tester.tap(find.text(' + '));
      await tester.pump();

      // Valor debe incrementarse a 6
      expect(find.text(' 6 '), findsOneWidget);
      expect(incrementCalls, 1);

      // Toca el botón de decrementar (_)
      await tester.tap(find.text(' _ '));
      await tester.pump();

      // Valor debe decrementar a 5
      expect(find.text(' 5 '), findsOneWidget);
      expect(decrementCalls, 1);

      // Decrementar hasta 0 y luego intentar decrementar más no debe cambiar valor ni llamar callback
      for (int i = 0; i < 5; i++) {
        await tester.tap(find.text(' _ '));
        await tester.pump();
      }

      expect(find.text(' 0 '), findsOneWidget);
      final prevDecrementCalls = decrementCalls;

      // Intenta decrementar en 0, no debe cambiar ni llamar callback
      await tester.tap(find.text(' _ '));
      await tester.pump();

      expect(find.text(' 0 '), findsOneWidget);
      expect(decrementCalls, prevDecrementCalls);
    },
  );
}
