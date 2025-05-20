import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/organisms/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'CustomAppBar muestra el título por defecto si no se pasa ninguno',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: CustomAppBar())),
      );

      expect(find.text('AppBar'), findsOneWidget);
    },
  );

  testWidgets(
    'CustomAppBar muestra el título personalizado si se proporciona',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: CustomAppBar(title: 'Mi Tienda')),
        ),
      );

      expect(find.text('Mi Tienda'), findsOneWidget);
    },
  );

  testWidgets(
    'CustomAppBar llama a onProfile cuando se toca el botón de perfil',
    (WidgetTester tester) async {
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomAppBar(
              onProfile: () {
                tapped = true;
              },
            ),
          ),
        ),
      );

      final profileButton = find.byIcon(Icons.person);
      expect(profileButton, findsOneWidget);

      await tester.tap(profileButton);
      expect(tapped, isTrue);
    },
  );

  testWidgets('CustomAppBar llama a onCart cuando se toca el botón del carrito', (
    WidgetTester tester,
  ) async {
    bool tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomAppBar(
            onCart: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    // Encuentra el botón por tipo CircleButton, ya que el ícono no está definido
    final buttons = find.byType(CircleButton);
    expect(buttons, findsNWidgets(2)); // perfil + carrito

    // Toca el segundo botón (carrito)
    await tester.tap(buttons.at(1));
    expect(tapped, isTrue);
  });
}
