import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String? text;
  final EdgeInsets? padding;
  final Color? color;
  const CustomTitle({super.key, this.text, this.padding, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ??
          const EdgeInsets.only(
            top: AppSpacing.topSpacing,
            left: AppSpacing.sidePadding,
          ),
      child: Text(
        text ?? 'Title',
        maxLines: 2,
        style: AppTypography.display.copyWith(color: color),
      ),
    );
  }
}
