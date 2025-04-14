import 'package:ecommerce_system_design/atoms/card_box.dart';
import 'package:ecommerce_system_design/atoms/counter.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final EdgeInsets? padding;
  const CartItem({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardBox(width: 120, child: Center(child: Text('Photo'))),
          SizedBox(width: AppSpacing.betweenHorizontalCards),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lorem ipsum dolor', style: AppTypography.subTitle),
                Text('ID: 1', style: AppTypography.labelSmall),
                Spacer(),
                Row(
                  children: [
                    Text('\$0000', style: AppTypography.label),
                    Spacer(),
                    Counter(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
