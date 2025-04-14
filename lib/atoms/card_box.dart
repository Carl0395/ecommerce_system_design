import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  const CardBox({super.key, this.height, this.width, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100,
      height: height ?? 100,
      decoration: BoxDecoration(
        color: color ?? AppColors.backgroundColor,
        boxShadow: [AppShadows.cardShadow, AppShadows.neumorphismShadow],
        borderRadius: BorderRadius.circular(AppRadii.md),
      ),
      child: child,
    );
  }
}
