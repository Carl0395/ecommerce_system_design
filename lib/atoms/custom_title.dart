import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String? text;
  final EdgeInsets? padding;
  const CustomTitle({super.key, this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ??
          const EdgeInsets.only(
            top: AppSpacing.topSpacing,
            left: AppSpacing.sidePadding,
          ),
      child: Text(text ?? 'Title', style: AppTypography.display),
    );
  }
}
