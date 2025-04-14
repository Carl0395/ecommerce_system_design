import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: AppSpacing.sidePadding),
          CircleButton(icon: Icons.person),
          SizedBox(width: AppSpacing.sidePadding),
          CustomTitle(text: title ?? 'AppBar', padding: EdgeInsets.zero),
          Spacer(),
          CircleButton(),
          SizedBox(width: AppSpacing.sidePadding),
        ],
      ),
    );
  }
}
