import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String? text;
  const DescriptionText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text ?? 'text', style: AppTypography.body);
  }
}
