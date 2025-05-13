import 'package:ecommerce_system_design/atoms/header_box.dart';
import 'package:ecommerce_system_design/ecommerce_system_design.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  final String? label;
  final String? imageUrl;
  final String? price;
  const AdWidget({super.key, required this.imageUrl, this.price, this.label});

  @override
  Widget build(BuildContext context) {
    return HeaderBox(
      height: 180,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 140,
            width: 180,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                imageUrl != null ? Image.network(imageUrl ?? '') : SizedBox(),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  label ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: AppTypography.label.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textLabel,
                  ),
                ),
              ),
              if (price != null)
                CustomTitle(text: '\$$price', padding: EdgeInsets.zero),
              SizedBox(height: 10),
              if (price != null) CustomTextButton(text: '¡Shop now!'),
            ],
          ),
        ],
      ),
    );
  }
}
