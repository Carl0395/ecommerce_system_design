import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/molecules/cart_item.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sidePadding,
              ),
              child: CartItem(),
            ),
            CustomDivider(),
          ],
        );
      },
    );
  }
}
