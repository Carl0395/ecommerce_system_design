import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final double? size;
  final IconData? icon;
  final VoidCallback? onTap;
  const CircleButton({super.key, this.size, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final sizeButton = size ?? 50;
    final iconButton = icon ?? Icons.shopping_cart_outlined;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: sizeButton,
        height: sizeButton,
        decoration: BoxDecoration(
          color: AppColors.secondaryButton,
          borderRadius: BorderRadius.circular(sizeButton / 2),
        ),
        child: Icon(iconButton, color: AppColors.tertiaryColor),
      ),
    );
  }
}
