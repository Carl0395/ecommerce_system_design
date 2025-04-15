import 'package:ecommerce_system_design/atoms/custom_text_button.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/atoms/description_text.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/molecules/header_image_box.dart';
import 'package:ecommerce_system_design/organisms/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: 'Shopping Cart'),
            HeaderImageBox(
              url:
                  'https://mockups-design.com/wp-content/uploads/2021/08/Hanging_T-Shirt_Mockup_2.jpg',
            ),
            CustomTitle(text: "Men's casual T-shirt"),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.sidePadding),
              child: DescriptionText(
                text:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClinton, a Latin professor at Hampden-Sydney College in Virginia',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sidePadding,
              ),
              child: CustomTextButton(text: 'Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
