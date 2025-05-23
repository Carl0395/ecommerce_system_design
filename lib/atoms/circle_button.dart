import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final double? size;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? iconColor;
  final String? semanticLabel;
  final String? semanticHint;
  const CircleButton({
    super.key,
    this.size,
    this.icon,
    this.onTap,
    this.color,
    this.iconColor,
    this.semanticLabel,
    this.semanticHint,
  });

  @override
  Widget build(BuildContext context) {
    final sizeButton = size ?? 50;
    final iconButton = icon ?? Icons.shopping_cart_outlined;
    return Semantics(
      button: true,
      label: semanticLabel,
      hint: semanticHint,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: sizeButton,
          height: sizeButton,
          decoration: BoxDecoration(
            color: color ?? AppColors.secondaryButton,
            borderRadius: BorderRadius.circular(sizeButton / 2),
          ),
          child: Icon(iconButton, color: iconColor ?? AppColors.tertiaryColor),
        ),
      ),
    );
  }
}
