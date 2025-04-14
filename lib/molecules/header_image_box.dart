import 'package:ecommerce_system_design/atoms/header_box.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:flutter/material.dart';

class HeaderImageBox extends StatelessWidget {
  final String? url;
  const HeaderImageBox({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return HeaderBox(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.sidePadding),
      width: double.infinity,
      height: 220,
      child: Image.network(
        errorBuilder: (context, error, stackTrace) => Placeholder(),
        fit: BoxFit.cover,
        url ?? '',
      ),
    );
  }
}
