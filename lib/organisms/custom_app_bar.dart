import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final VoidCallback? onProfile;
  final VoidCallback? onCart;
  final Color? profileButtonColor;
  final Color? titleColor;
  final Color? cartButtonColor;
  const CustomAppBar({
    super.key,
    this.title,
    this.onProfile,
    this.onCart,
    this.profileButtonColor,
    this.titleColor,
    this.cartButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: AppSpacing.sidePadding),
          CircleButton(
            icon: Icons.person,
            onTap: onProfile,
            iconColor: profileButtonColor,
          ),
          SizedBox(width: AppSpacing.sidePadding),
          CustomTitle(
            text: title ?? 'AppBar',
            padding: EdgeInsets.zero,
            color: titleColor,
          ),
          Spacer(),
          CircleButton(onTap: onCart, iconColor: cartButtonColor),
          SizedBox(width: AppSpacing.sidePadding),
        ],
      ),
    );
  }
}
