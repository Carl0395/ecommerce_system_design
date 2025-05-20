import 'package:ecommerce_system_design/molecules/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Search widget basic functionality test', (
    WidgetTester tester,
  ) async {
    final controller = TextEditingController();
    String changedText = '';
    bool? focused;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Search(
            hintText: 'Search here',
            controller: controller,
            onChange: (text) {
              changedText = text;
            },
            onFocus: (hasFocus) {
              focused = hasFocus;
            },
          ),
        ),
      ),
    );

    // Verifica que el hintText está presente
    expect(find.text('Search here'), findsOneWidget);

    // Verifica que el icono de búsqueda está presente
    expect(find.byIcon(Icons.search), findsOneWidget);

    // Escribe texto en el campo
    await tester.enterText(find.byType(TextField), 'Hello');
    await tester.pumpAndSettle();

    // onChange debe haberse llamado
    expect(changedText, 'Hello');

    // El icono de cerrar debe mostrarse
    expect(find.byIcon(Icons.close), findsOneWidget);

    // Simula el tap en el icono de cerrar
    await tester.tap(find.byIcon(Icons.close));
    await tester.pumpAndSettle();

    // El texto debe estar vacío y onChange debe haberse llamado con ''
    expect(controller.text, '');
    expect(changedText, '');

    // Simula foco en el TextField
    await tester.tap(find.byType(TextField));
    await tester.pump();

    expect(focused, true);

    // Simula perder foco
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pump();

    expect(focused, false);
  });
}
