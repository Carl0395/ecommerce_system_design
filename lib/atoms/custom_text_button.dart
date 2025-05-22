import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final Color? color;
  const CustomTextButton({super.key, this.onTap, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadii.sm),
      child: Material(
        color: theme.colorScheme.primary,
        child: InkWell(
          onTap: onTap ?? () {},
          splashColor: theme.colorScheme.tertiary,
          child: Container(
            height: 44,
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.insideHorizontalButton,
              vertical: AppSpacing.insideVerticalButton,
            ),
            child: Center(
              child: Text(
                text ?? 'Text Button',
                style: AppTypography.label.copyWith(
                  color: color ?? Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
