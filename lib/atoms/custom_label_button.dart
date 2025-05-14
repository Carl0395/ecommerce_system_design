import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class CustomLabelButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  const CustomLabelButton({super.key, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Text(
            label ?? 'Insert text',
            style: AppTypography.button.copyWith(color: AppColors.primaryColor),
          ),
          Positioned(
            bottom: -2,
            left: 0,
            right: 0,
            child: Container(
              height: 1,
              width: double.infinity,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
