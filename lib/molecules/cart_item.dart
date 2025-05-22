import 'package:ecommerce_system_design/atoms/card_box.dart';
import 'package:ecommerce_system_design/atoms/counter.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String? id;
  final String? urlImage;
  final String? title;
  final String? price;
  final int? count;
  final EdgeInsets? padding;
  final Color? titleColor;
  const CartItem({
    super.key,
    this.padding,
    this.id,
    this.urlImage,
    this.title,
    this.price,
    this.count,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 120,
      // constraints: BoxConstraints(minHeight: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardBox(
            width: 120,
            child:
                urlImage == null
                    ? Center(child: Text('Photo'))
                    : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(urlImage!),
                    ),
          ),
          SizedBox(width: AppSpacing.betweenHorizontalCards),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? 'Lorem ipsum dolor',
                  style: AppTypography.subTitle.copyWith(color: titleColor),
                ),
                Text('ID: ${id ?? '1'}', style: AppTypography.labelSmall),
                Spacer(),
                Row(
                  children: [
                    Text('\$${price ?? '0000'}', style: AppTypography.label),
                    Spacer(),
                    Counter(value: count ?? 1),
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
