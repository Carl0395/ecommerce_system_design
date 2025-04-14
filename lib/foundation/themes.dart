import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  textTheme: const TextTheme(
    headlineMedium: AppTypography.title,
    titleMedium: AppTypography.subTitle,
    labelMedium: AppTypography.button,
    bodyMedium: AppTypography.body,
  ),
  colorScheme: ColorScheme.light(
    primary: AppColors.primaryColor,
    surface: AppColors.backgroundColor,
    tertiary: AppColors.tertiaryColor,
  ),
);

final darkTheme = ThemeData(
  textTheme: const TextTheme(
    headlineMedium: AppTypography.title,
    titleMedium: AppTypography.subTitle,
    labelMedium: AppTypography.button,
    bodyMedium: AppTypography.body,
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.red,
    surface: AppColors.backgroundColor,
  ),
);
