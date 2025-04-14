import 'package:ecommerce_system_design/atoms/custom_text_button.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:showcase/config/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const pages = {
    'Foundation': AppRoutes.foundation,
    'Atoms': AppRoutes.atoms,
    'Molecules': AppRoutes.molecules,
    'Organism': AppRoutes.organisms,
    'Templates': AppRoutes.templates,
    'Pages': AppRoutes.pages,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Showcase')),
      body: ListView.builder(
        itemCount: pages.length,
        padding: const EdgeInsets.only(top: AppSpacing.topSpacing),
        itemBuilder: (context, index) {
          final page = pages.entries.toList()[index];
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sidePadding,
                ),
                child: CustomTextButton(
                  text: page.key,
                  onTap: () => Navigator.of(context).pushNamed(page.value),
                ),
              ),
              SizedBox(height: AppSpacing.dividerSpacing),
            ],
          );
        },
      ),
    );
  }
}
