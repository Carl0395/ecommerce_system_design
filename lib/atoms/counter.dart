import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.secondaryButton,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.5, color: AppColors.border),
        boxShadow: [AppShadows.neumorphismShadow, AppShadows.cardShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' + '),
          Text(' 5 '),
          Transform.translate(offset: Offset(0, -6), child: Text(' _ ')),
        ],
      ),
    );
  }
}
