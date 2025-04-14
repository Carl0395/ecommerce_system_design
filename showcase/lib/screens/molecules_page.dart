import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/molecules/cart_item.dart';
import 'package:flutter/material.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Molecules', padding: EdgeInsets.zero),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.sidePadding),
        children: [showCartItem(), SizedBox(height: 200)],
      ),
    );
  }

  Widget showCartItem() {
    return Column(
      children: [
        CustomTitle(
          text: 'CartItem',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        CartItem(),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }
}
