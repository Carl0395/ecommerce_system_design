import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:flutter/material.dart';

class HeaderBox extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Widget? child;
  const HeaderBox({
    super.key,
    this.height,
    this.width,
    this.margin,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100,
      height: height ?? 100,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        boxShadow: [AppShadows.headerShadow],
        borderRadius: BorderRadius.circular(AppRadii.md),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadii.md),
        child: child,
      ),
    );
  }
}
