import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/organisms/cart_list.dart';
import 'package:flutter/material.dart';

class ListTemplate extends StatelessWidget {
  const ListTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.sidePadding),
              child: Row(
                children: [
                  CustomTitle(text: 'List items'),
                  Spacer(),
                  CircleButton(),
                ],
              ),
            ),
            SizedBox(height: AppSpacing.topSpacing),

            Expanded(child: CartList()),
            // SizedBox(height: AppSpacing.betweenSections),
            // HeaderBox(),
            // SizedBox(height: AppSpacing.betweenSections),
            // CircleButton(),
            // SizedBox(height: AppSpacing.betweenSections),
            // CustomTextButton(),
            // SizedBox(height: AppSpacing.betweenSections),
            // CustomTag(),
            // SizedBox(height: AppSpacing.betweenSections),
            // CardBox(),
          ],
        ),
      ),
    );
  }
}
