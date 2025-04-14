import 'package:ecommerce_system_design/atoms/card_box.dart';
import 'package:ecommerce_system_design/atoms/circle_button.dart';
import 'package:ecommerce_system_design/atoms/counter.dart';
import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/atoms/custom_tag.dart';
import 'package:ecommerce_system_design/atoms/custom_text_button.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/atoms/header_box.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Atoms', padding: EdgeInsets.zero),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.sidePadding),
        children: [
          showHeaderBox(),
          showCardBox(),
          circleButton(),
          showCounter(),
          showCustomDivider(),
          showCustomTag(),
          showCustomTextButton(),
          showCustomTitle(),
          SizedBox(height: 200),
        ],
      ),
    );
  }

  Widget showCardBox() {
    return Column(
      children: [
        CustomTitle(
          text: 'CardBox',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CardBox(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget circleButton() {
    return Column(
      children: [
        CustomTitle(
          text: 'CircleButton',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CircleButton(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCounter() {
    return Column(
      children: [
        CustomTitle(
          text: 'Counter',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        Counter(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCustomDivider() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomDivider',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CustomDivider(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCustomTag() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomTag',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CustomTag(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCustomTextButton() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomTextButton',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CustomTextButton(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCustomTitle() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomDivider',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CustomTitle(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showHeaderBox() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomHeaderBox',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        HeaderBox(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }
}
