import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/pages/shopping_cart.dart';
import 'package:flutter/material.dart';

class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Pages', padding: EdgeInsets.zero),
      ),
      body: showPage(),
    );
  }

  Widget showPage() {
    return Column(
      children: [
        SizedBox(height: AppSpacing.topSpacing),
        Expanded(child: ShoppingCart()),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }
}
