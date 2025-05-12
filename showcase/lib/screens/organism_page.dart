import 'package:ecommerce_system_design/atoms/custom_divider.dart';
import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/organisms/cart_list.dart';
import 'package:ecommerce_system_design/organisms/custom_app_bar.dart';
import 'package:ecommerce_system_design/organisms/products_grid.dart';
import 'package:ecommerce_system_design/organisms/tag_horizontal_list.dart';
import 'package:flutter/material.dart';

class OrganismPage extends StatelessWidget {
  const OrganismPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Organisms', padding: EdgeInsets.zero),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            showCustomAppBar(),
            CustomDivider(),
            showTagsList(),
            CustomDivider(),
            showCartList(),
            CustomDivider(),
            showProductsGrid(),
          ],
        ),
      ),
    );
  }

  Widget showCustomAppBar() {
    return Column(
      children: [
        CustomTitle(
          text: 'CustomAppBar',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CustomAppBar(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showTagsList() {
    return Column(
      children: [
        CustomTitle(
          text: 'Tags',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        TagHorizontalList(tags: ['All', 'Clothes', 'Shoes', 'Accessories']),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }

  Widget showCartList() {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          CustomTitle(
            text: 'CartList',
            padding: EdgeInsets.only(top: AppSpacing.topSpacing),
          ),
          SizedBox(height: AppSpacing.topSpacing),
          Expanded(child: CartList()),
          SizedBox(height: AppSpacing.betweenCards),
        ],
      ),
    );
  }

  Widget showProductsGrid() {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          CustomTitle(
            text: 'Products',
            padding: EdgeInsets.only(top: AppSpacing.topSpacing),
          ),
          SizedBox(height: AppSpacing.topSpacing),
          Expanded(child: ProductsGrid()),
          SizedBox(height: AppSpacing.betweenCards),
        ],
      ),
    );
  }
}
