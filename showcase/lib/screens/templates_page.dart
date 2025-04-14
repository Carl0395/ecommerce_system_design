import 'package:ecommerce_system_design/atoms/custom_title.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/templates/list_template.dart';
import 'package:flutter/material.dart';

class TemplatesPage extends StatelessWidget {
  const TemplatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomTitle(text: 'Organisms', padding: EdgeInsets.zero),
      ),
      body: showTemplate(),
    );
  }

  Widget showTemplate() {
    return Column(
      children: [
        CustomTitle(
          text: 'Templates',
          padding: EdgeInsets.only(top: AppSpacing.topSpacing),
        ),
        SizedBox(height: AppSpacing.topSpacing),
        Expanded(child: ListTemplate()),
        SizedBox(height: AppSpacing.betweenCards),
      ],
    );
  }
}
