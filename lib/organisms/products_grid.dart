import 'package:flutter/material.dart';

class ProductsGrid<T> extends StatelessWidget {
  final List<T>? items;
  final Widget Function(BuildContext context, T item)? itemBuilder;
  const ProductsGrid({super.key, this.items, this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: items?.length ?? 0,
      itemBuilder: (context, index) {
        final item = items![index];
        return itemBuilder?.call(context, item);
      },
    );
  }
}
