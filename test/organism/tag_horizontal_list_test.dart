import 'package:ecommerce_system_design/atoms/custom_tag.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/organisms/tag_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TagHorizontalList no muestra nada si tags es null o vacío', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: TagHorizontalList())),
    );

    expect(find.byType(CustomTag), findsNothing);

    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: TagHorizontalList(tags: []))),
    );

    expect(find.byType(CustomTag), findsNothing);
  });

  testWidgets('TagHorizontalList muestra los tags correctamente', (
    WidgetTester tester,
  ) async {
    final tags = ['Popular', 'Nuevos', 'Oferta'];

    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: TagHorizontalList(tags: tags))),
    );

    for (final tag in tags) {
      expect(find.text(tag), findsOneWidget);
    }

    expect(find.byType(CustomTag), findsNWidgets(tags.length));
  });

  testWidgets('TagHorizontalList aplica estilo al tag seleccionado', (
    WidgetTester tester,
  ) async {
    final tags = ['A', 'B', 'C'];
    const selected = 'B';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TagHorizontalList(tags: tags, selectedTag: selected),
        ),
      ),
    );

    final selectedTagWidget = tester.widget<CustomTag>(
      find.widgetWithText(CustomTag, selected),
    );
    expect(selectedTagWidget.color, AppColors.primaryColor);
    expect(selectedTagWidget.textStyle?.color, Colors.white);
  });

  testWidgets('TagHorizontalList llama a onTag al tocar un tag', (
    WidgetTester tester,
  ) async {
    final tags = ['X', 'Y'];
    String? tapped;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TagHorizontalList(
            tags: tags,
            onTag: (tag) {
              tapped = tag;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Y'));
    expect(tapped, 'Y');
  });
}
