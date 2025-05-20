import 'package:ecommerce_system_design/atoms/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomShimmer renders child and animates', (
    WidgetTester tester,
  ) async {
    const testKey = Key('shimmer-child');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomShimmer(child: Text('Shimmering Text', key: testKey)),
        ),
      ),
    );

    // Verifica que el widget hijo se renderiza
    expect(find.byKey(testKey), findsOneWidget);

    // Simula un frame después de la animación
    await tester.pump(const Duration(milliseconds: 100));

    // Verifica que el widget todavía esté presente después del pump
    expect(find.text('Shimmering Text'), findsOneWidget);

    // No se puede probar visualmente el ShaderMask directamente,
    // pero puedes verificar que el CustomShimmer sigue siendo parte del árbol
    expect(find.byType(CustomShimmer), findsOneWidget);
    expect(find.byType(ShaderMask), findsOneWidget);
  });
}
