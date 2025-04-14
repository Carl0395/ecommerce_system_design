import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/atoms/custom_tag.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class FoundationPage extends StatelessWidget {
  const FoundationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Foundation', padding: EdgeInsets.zero),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.sidePadding),
        children: [
          showTypography(),

          SizedBox(height: AppSpacing.betweenSections),
          CustomDivider(),

          showColors(),

          SizedBox(height: AppSpacing.betweenSections),
          CustomDivider(),

          showRadius(),

          SizedBox(height: AppSpacing.betweenSections),
          CustomDivider(),

          showShadows(),

          SizedBox(height: 200),
        ],
      ),
    );
  }

  Widget showTypography() {
    return Column(
      children: [
        CustomTitle(
          text: 'Typography',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        Text('Display', style: AppTypography.display),
        SizedBox(height: AppSpacing.betweenCards),
        Text('Title', style: AppTypography.title),
        SizedBox(height: AppSpacing.betweenCards),
        Text('Subtitle', style: AppTypography.subTitle),
        SizedBox(height: AppSpacing.betweenCards),
        Text('Label', style: AppTypography.label),
        SizedBox(height: AppSpacing.betweenCards),
        Text('Label Small', style: AppTypography.labelSmall),
        SizedBox(height: AppSpacing.betweenCards),
        Text('Body', style: AppTypography.body),
        SizedBox(height: AppSpacing.betweenCards),
        Text(
          'Button',
          style: AppTypography.button.copyWith(color: AppColors.textBody),
        ),
      ],
    );
  }

  Widget showColors() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          text: 'Colors',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.betweenSections),
        Wrap(
          runSpacing: AppSpacing.betweenCards,
          spacing: AppSpacing.betweenCards,
          children: [
            CustomTag(
              color: AppColors.primaryColor,
              label: 'PrimaryColor',
              textStyle: AppTypography.button,
            ),
            CustomTag(color: AppColors.secondaryColor, label: 'SecondaryColor'),
            CustomTag(
              color: AppColors.tertiaryColor,
              label: 'TertiaryColor',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.backgroundColor,
              label: 'BackgroundColor',
            ),
            CustomTag(
              color: AppColors.tertiaryColor,
              label: 'TertiaryColor',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.textTitle,
              label: 'textTitle',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.textSubtitle,
              label: 'textSubtitle',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.textLabel,
              label: 'textLabel',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.textBody,
              label: 'textBody',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.textLabel,
              label: 'textLabel',
              textStyle: AppTypography.button,
            ),
            CustomTag(color: AppColors.textButton, label: 'textButton'),
            CustomTag(
              color: AppColors.primaryButton,
              label: 'primaryButton',
              textStyle: AppTypography.button,
            ),
            CustomTag(
              color: AppColors.secondaryButton,
              label: 'secondaryButton',
            ),
            CustomTag(
              color: AppColors.border,
              label: 'border',
              textStyle: AppTypography.button,
            ),
          ],
        ),
      ],
    );
  }

  Widget showRadius() {
    return Column(
      children: [
        CustomTitle(
          text: 'Radii',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.betweenSections),
        Wrap(
          runSpacing: AppSpacing.betweenCards,
          spacing: AppSpacing.betweenCards,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(AppRadii.sm),
              ),
              child: Center(child: Text('sm')),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(AppRadii.md),
              ),
              child: Center(child: Text('md')),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(AppRadii.lg),
              ),
              child: Center(child: Text('lg')),
            ),
          ],
        ),
      ],
    );
  }

  Widget showShadows() {
    return Column(
      children: [
        CustomTitle(
          text: 'Shadows',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.betweenSections),
        Wrap(
          runSpacing: AppSpacing.betweenCards,
          spacing: AppSpacing.betweenCards,
          children: [
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [AppShadows.headerShadow],
              ),
              child: Center(child: Text('headerShadow')),
            ),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [AppShadows.cardShadow],
              ),
              child: Center(child: Text('cardShadow')),
            ),

            Container(
              height: 40,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  AppShadows.neumorphismShadow,
                  AppShadows.cardShadow,
                ],
              ),
              child: Center(child: Text('neumorphismShadow')),
            ),
          ],
        ),
      ],
    );
  }
}
