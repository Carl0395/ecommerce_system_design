import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/molecules/cart_item.dart';
import 'package:flutter/material.dart';

class CartList<T> extends StatelessWidget {
  final CartItem Function(BuildContext context, T cartItem)? cartItemBuilder;
  final List<T> data;
  const CartList({super.key, this.cartItemBuilder, this.data = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sidePadding,
              ),
              child: cartItemBuilder?.call(context, item) ?? CartItem(),
            ),
            CustomDivider(),
          ],
        );
      },
    );
  }
}
