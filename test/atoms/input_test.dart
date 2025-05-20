import 'package:ecommerce_system_design/atoms/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Input renders with hint text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Input(hintText: 'Escribe tu nombre')),
      ),
    );

    expect(find.text('Escribe tu nombre'), findsOneWidget);
  });

  testWidgets('Input calls onChanged when text is entered', (
    WidgetTester tester,
  ) async {
    String changedText = '';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: Input(onChanged: (value) => changedText = value)),
      ),
    );

    await tester.enterText(find.byType(TextField), 'Hola');
    expect(changedText, 'Hola');
  });

  testWidgets('Input renders leading icon if provided', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Input(leadingIcon: Icons.email))),
    );

    expect(find.byIcon(Icons.email), findsOneWidget);
  });

  testWidgets('Input renders trailing icon if provided', (
    WidgetTester tester,
  ) async {
    const trailing = Icon(Icons.visibility);

    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Input(trailingIcon: trailing))),
    );

    expect(find.byIcon(Icons.visibility), findsOneWidget);
  });

  testWidgets('Input displays error message and changes styles', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Input(hintText: 'Correo', error: 'Campo obligatorio'),
        ),
      ),
    );

    expect(find.text('Campo obligatorio'), findsOneWidget);
    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.decoration?.hintStyle?.color, isNot(equals(Colors.grey)));
  });

  testWidgets('Input obscures text when obscureText is true', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Input(obscureText: true))),
    );

    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.obscureText, isTrue);
  });

  testWidgets('Input disables input when enabled is false', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Input(enabled: false))),
    );

    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.enabled, isFalse);
  });
}
