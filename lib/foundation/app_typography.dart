import 'package:ecommerce_system_design/tokens/font_sizes.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  AppTypography._();

  static const display = TextStyle(
    fontSize: FontSizes.xl,
    fontWeight: FontWeight.bold,
    color: AppColors.textTitle,
  );

  static const title = TextStyle(
    fontSize: FontSizes.lg,
    fontWeight: FontWeight.bold,
    color: AppColors.textTitle,
  );

  static const subTitle = TextStyle(
    fontSize: FontSizes.md,
    fontWeight: FontWeight.w500,
    color: AppColors.textSubtitle,
  );

  static const label = TextStyle(
    fontSize: FontSizes.md,
    fontWeight: FontWeight.w500,
    color: AppColors.textLabel,
  );

  static const labelSmall = TextStyle(
    fontSize: FontSizes.sm,
    fontWeight: FontWeight.w500,
    color: AppColors.textLabel,
  );

  static const body = TextStyle(
    fontSize: FontSizes.md,
    color: AppColors.textBody,
  );

  static const button = TextStyle(
    fontSize: FontSizes.md,
    fontWeight: FontWeight.bold,
    color: AppColors.textButton,
  );
}
