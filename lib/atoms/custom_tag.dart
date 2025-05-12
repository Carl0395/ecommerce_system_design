import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  final String? label;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final double? minWidth;
  const CustomTag({
    super.key,
    this.label,
    this.color,
    this.textStyle,
    this.margin,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      constraints: BoxConstraints(minWidth: minWidth ?? 0),
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.insideHorizontalButton,
        vertical: AppSpacing.insideVerticalButton,
      ),
      decoration: BoxDecoration(
        color: color ?? AppColors.secondaryButton,
        boxShadow: [AppShadows.cardShadow],
        borderRadius: BorderRadius.circular(AppRadii.md),
        border: Border.all(width: 0.5, color: AppColors.border),
      ),
      child: Center(
        child: Text(label ?? 'Label', style: textStyle ?? AppTypography.label),
      ),
    );
  }
}
