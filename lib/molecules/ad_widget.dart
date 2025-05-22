import 'package:ecommerce_system_design/ecommerce_system_design.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  final String? label;
  final String? imageUrl;
  final String? price;
  final VoidCallback? onShop;
  final Color? shopButtonColor;
  final Color? shopTextButtonColor;
  final Color? labelColor;
  final Color? priceColor;
  final String? textButton;
  const AdWidget({
    super.key,
    required this.imageUrl,
    this.price,
    this.label,
    this.onShop,
    this.shopButtonColor,
    this.labelColor,
    this.priceColor,
    this.shopTextButtonColor,
    this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return HeaderBox(
      height: 180,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 140,
            width: 180,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                imageUrl != null ? Image.network(imageUrl ?? '') : SizedBox(),
          ),
          SizedBox(width: 10),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    label ?? '',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: AppTypography.label.copyWith(
                      fontWeight: FontWeight.bold,
                      color: labelColor ?? AppColors.textLabel,
                    ),
                  ),
                ),
                if (price != null)
                  CustomTitle(
                    text: '\$$price',
                    padding: EdgeInsets.zero,
                    color: priceColor,
                  ),
                SizedBox(height: 10),
                if (price != null)
                  CustomTextButton(
                    text: textButton ?? '¡Shop now!',
                    onTap: onShop,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
